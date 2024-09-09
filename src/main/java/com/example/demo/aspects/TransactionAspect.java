package com.example.demo.aspects;

import lombok.RequiredArgsConstructor;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import java.util.logging.Logger;

/**
 * Aspect for handling transactions in methods annotated with {@code @Transaction}.
 * This aspect intercepts method calls, starts a transaction, and ensures that the transaction
 * is committed or rolled back based on the method's execution.
 */
@Aspect
@Component
@RequiredArgsConstructor
public class TransactionAspect {
    /**
     * The transaction manager used to manage transactions.
     */
    private final PlatformTransactionManager transactionManager;

    /**
     * Logger for logging transaction-related messages.
     */
    private final Logger logger = Logger.getLogger(TransactionAspect.class.getName());

    /**
     * Pointcut that matches all Spring beans annotated with {@code @Transaction}.
     */
    @Pointcut("@annotation(com.example.demo.annotations.Transaction)")
    public void transaction() {
    }

    /**
     * Advice covering the {@code transaction} pointcut.
     * This advice intercepts the method execution, starts a transaction, and ensures
     * that the transaction is committed or rolled back based on the method's execution.
     *
     * @param joinPoint join point for advice
     * @return result of the method execution
     * @throws Throwable if the method execution throws an exception
     */
    @Around("transaction()")
    public Object logAroundRepository(ProceedingJoinPoint joinPoint) throws Throwable {
        return transaction(joinPoint);
    }


    /**
     * Handles the transaction logic for the intercepted method.
     * Starts a transaction, executes the method, and commits or rolls back the transaction
     * based on the method's execution.
     *
     * @param joinPoint join point for advice
     * @return result of the method execution
     * @throws Throwable if the method execution throws an exception
     */
    private Object transaction(ProceedingJoinPoint joinPoint) throws Throwable {

        TransactionStatus transactionStatus = transactionManager.getTransaction(new DefaultTransactionDefinition());

        try {
            logger.info("Transaction begin");

            Object result = joinPoint.proceed();
            transactionManager.commit(transactionStatus);

            logger.info("Transaction end");

            return result;
        } catch (IllegalArgumentException e) {
            transactionManager.rollback(transactionStatus);
            throw e;
        }
    }
}
