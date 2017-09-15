package org.fjh.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andUidIsNull() {
            addCriterion("uid is null");
            return (Criteria) this;
        }

        public Criteria andUidIsNotNull() {
            addCriterion("uid is not null");
            return (Criteria) this;
        }

        public Criteria andUidEqualTo(String value) {
            addCriterion("uid =", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotEqualTo(String value) {
            addCriterion("uid <>", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThan(String value) {
            addCriterion("uid >", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThanOrEqualTo(String value) {
            addCriterion("uid >=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThan(String value) {
            addCriterion("uid <", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThanOrEqualTo(String value) {
            addCriterion("uid <=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLike(String value) {
            addCriterion("uid like", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotLike(String value) {
            addCriterion("uid not like", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidIn(List<String> values) {
            addCriterion("uid in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotIn(List<String> values) {
            addCriterion("uid not in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidBetween(String value1, String value2) {
            addCriterion("uid between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotBetween(String value1, String value2) {
            addCriterion("uid not between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andUnameIsNull() {
            addCriterion("uname is null");
            return (Criteria) this;
        }

        public Criteria andUnameIsNotNull() {
            addCriterion("uname is not null");
            return (Criteria) this;
        }

        public Criteria andUnameEqualTo(String value) {
            addCriterion("uname =", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotEqualTo(String value) {
            addCriterion("uname <>", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameGreaterThan(String value) {
            addCriterion("uname >", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameGreaterThanOrEqualTo(String value) {
            addCriterion("uname >=", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLessThan(String value) {
            addCriterion("uname <", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLessThanOrEqualTo(String value) {
            addCriterion("uname <=", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLike(String value) {
            addCriterion("uname like", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotLike(String value) {
            addCriterion("uname not like", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameIn(List<String> values) {
            addCriterion("uname in", values, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotIn(List<String> values) {
            addCriterion("uname not in", values, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameBetween(String value1, String value2) {
            addCriterion("uname between", value1, value2, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotBetween(String value1, String value2) {
            addCriterion("uname not between", value1, value2, "uname");
            return (Criteria) this;
        }

        public Criteria andUpassIsNull() {
            addCriterion("upass is null");
            return (Criteria) this;
        }

        public Criteria andUpassIsNotNull() {
            addCriterion("upass is not null");
            return (Criteria) this;
        }

        public Criteria andUpassEqualTo(String value) {
            addCriterion("upass =", value, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassNotEqualTo(String value) {
            addCriterion("upass <>", value, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassGreaterThan(String value) {
            addCriterion("upass >", value, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassGreaterThanOrEqualTo(String value) {
            addCriterion("upass >=", value, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassLessThan(String value) {
            addCriterion("upass <", value, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassLessThanOrEqualTo(String value) {
            addCriterion("upass <=", value, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassLike(String value) {
            addCriterion("upass like", value, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassNotLike(String value) {
            addCriterion("upass not like", value, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassIn(List<String> values) {
            addCriterion("upass in", values, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassNotIn(List<String> values) {
            addCriterion("upass not in", values, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassBetween(String value1, String value2) {
            addCriterion("upass between", value1, value2, "upass");
            return (Criteria) this;
        }

        public Criteria andUpassNotBetween(String value1, String value2) {
            addCriterion("upass not between", value1, value2, "upass");
            return (Criteria) this;
        }

        public Criteria andUgenderIsNull() {
            addCriterion("ugender is null");
            return (Criteria) this;
        }

        public Criteria andUgenderIsNotNull() {
            addCriterion("ugender is not null");
            return (Criteria) this;
        }

        public Criteria andUgenderEqualTo(String value) {
            addCriterion("ugender =", value, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderNotEqualTo(String value) {
            addCriterion("ugender <>", value, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderGreaterThan(String value) {
            addCriterion("ugender >", value, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderGreaterThanOrEqualTo(String value) {
            addCriterion("ugender >=", value, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderLessThan(String value) {
            addCriterion("ugender <", value, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderLessThanOrEqualTo(String value) {
            addCriterion("ugender <=", value, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderLike(String value) {
            addCriterion("ugender like", value, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderNotLike(String value) {
            addCriterion("ugender not like", value, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderIn(List<String> values) {
            addCriterion("ugender in", values, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderNotIn(List<String> values) {
            addCriterion("ugender not in", values, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderBetween(String value1, String value2) {
            addCriterion("ugender between", value1, value2, "ugender");
            return (Criteria) this;
        }

        public Criteria andUgenderNotBetween(String value1, String value2) {
            addCriterion("ugender not between", value1, value2, "ugender");
            return (Criteria) this;
        }

        public Criteria andUbirthdayIsNull() {
            addCriterion("ubirthday is null");
            return (Criteria) this;
        }

        public Criteria andUbirthdayIsNotNull() {
            addCriterion("ubirthday is not null");
            return (Criteria) this;
        }

        public Criteria andUbirthdayEqualTo(Date value) {
            addCriterionForJDBCDate("ubirthday =", value, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayNotEqualTo(Date value) {
            addCriterionForJDBCDate("ubirthday <>", value, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayGreaterThan(Date value) {
            addCriterionForJDBCDate("ubirthday >", value, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("ubirthday >=", value, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayLessThan(Date value) {
            addCriterionForJDBCDate("ubirthday <", value, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("ubirthday <=", value, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayIn(List<Date> values) {
            addCriterionForJDBCDate("ubirthday in", values, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayNotIn(List<Date> values) {
            addCriterionForJDBCDate("ubirthday not in", values, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("ubirthday between", value1, value2, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUbirthdayNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("ubirthday not between", value1, value2, "ubirthday");
            return (Criteria) this;
        }

        public Criteria andUemailIsNull() {
            addCriterion("uemail is null");
            return (Criteria) this;
        }

        public Criteria andUemailIsNotNull() {
            addCriterion("uemail is not null");
            return (Criteria) this;
        }

        public Criteria andUemailEqualTo(String value) {
            addCriterion("uemail =", value, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailNotEqualTo(String value) {
            addCriterion("uemail <>", value, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailGreaterThan(String value) {
            addCriterion("uemail >", value, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailGreaterThanOrEqualTo(String value) {
            addCriterion("uemail >=", value, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailLessThan(String value) {
            addCriterion("uemail <", value, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailLessThanOrEqualTo(String value) {
            addCriterion("uemail <=", value, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailLike(String value) {
            addCriterion("uemail like", value, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailNotLike(String value) {
            addCriterion("uemail not like", value, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailIn(List<String> values) {
            addCriterion("uemail in", values, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailNotIn(List<String> values) {
            addCriterion("uemail not in", values, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailBetween(String value1, String value2) {
            addCriterion("uemail between", value1, value2, "uemail");
            return (Criteria) this;
        }

        public Criteria andUemailNotBetween(String value1, String value2) {
            addCriterion("uemail not between", value1, value2, "uemail");
            return (Criteria) this;
        }

        public Criteria andUheadIsNull() {
            addCriterion("uhead is null");
            return (Criteria) this;
        }

        public Criteria andUheadIsNotNull() {
            addCriterion("uhead is not null");
            return (Criteria) this;
        }

        public Criteria andUheadEqualTo(String value) {
            addCriterion("uhead =", value, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadNotEqualTo(String value) {
            addCriterion("uhead <>", value, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadGreaterThan(String value) {
            addCriterion("uhead >", value, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadGreaterThanOrEqualTo(String value) {
            addCriterion("uhead >=", value, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadLessThan(String value) {
            addCriterion("uhead <", value, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadLessThanOrEqualTo(String value) {
            addCriterion("uhead <=", value, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadLike(String value) {
            addCriterion("uhead like", value, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadNotLike(String value) {
            addCriterion("uhead not like", value, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadIn(List<String> values) {
            addCriterion("uhead in", values, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadNotIn(List<String> values) {
            addCriterion("uhead not in", values, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadBetween(String value1, String value2) {
            addCriterion("uhead between", value1, value2, "uhead");
            return (Criteria) this;
        }

        public Criteria andUheadNotBetween(String value1, String value2) {
            addCriterion("uhead not between", value1, value2, "uhead");
            return (Criteria) this;
        }

        public Criteria andUmemoIsNull() {
            addCriterion("umemo is null");
            return (Criteria) this;
        }

        public Criteria andUmemoIsNotNull() {
            addCriterion("umemo is not null");
            return (Criteria) this;
        }

        public Criteria andUmemoEqualTo(String value) {
            addCriterion("umemo =", value, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoNotEqualTo(String value) {
            addCriterion("umemo <>", value, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoGreaterThan(String value) {
            addCriterion("umemo >", value, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoGreaterThanOrEqualTo(String value) {
            addCriterion("umemo >=", value, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoLessThan(String value) {
            addCriterion("umemo <", value, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoLessThanOrEqualTo(String value) {
            addCriterion("umemo <=", value, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoLike(String value) {
            addCriterion("umemo like", value, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoNotLike(String value) {
            addCriterion("umemo not like", value, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoIn(List<String> values) {
            addCriterion("umemo in", values, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoNotIn(List<String> values) {
            addCriterion("umemo not in", values, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoBetween(String value1, String value2) {
            addCriterion("umemo between", value1, value2, "umemo");
            return (Criteria) this;
        }

        public Criteria andUmemoNotBetween(String value1, String value2) {
            addCriterion("umemo not between", value1, value2, "umemo");
            return (Criteria) this;
        }

        public Criteria andUroleIsNull() {
            addCriterion("urole is null");
            return (Criteria) this;
        }

        public Criteria andUroleIsNotNull() {
            addCriterion("urole is not null");
            return (Criteria) this;
        }

        public Criteria andUroleEqualTo(Integer value) {
            addCriterion("urole =", value, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleNotEqualTo(Integer value) {
            addCriterion("urole <>", value, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleGreaterThan(Integer value) {
            addCriterion("urole >", value, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleGreaterThanOrEqualTo(Integer value) {
            addCriterion("urole >=", value, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleLessThan(Integer value) {
            addCriterion("urole <", value, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleLessThanOrEqualTo(Integer value) {
            addCriterion("urole <=", value, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleIn(List<Integer> values) {
            addCriterion("urole in", values, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleNotIn(List<Integer> values) {
            addCriterion("urole not in", values, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleBetween(Integer value1, Integer value2) {
            addCriterion("urole between", value1, value2, "urole");
            return (Criteria) this;
        }

        public Criteria andUroleNotBetween(Integer value1, Integer value2) {
            addCriterion("urole not between", value1, value2, "urole");
            return (Criteria) this;
        }

        public Criteria andUregtimeIsNull() {
            addCriterion("uregtime is null");
            return (Criteria) this;
        }

        public Criteria andUregtimeIsNotNull() {
            addCriterion("uregtime is not null");
            return (Criteria) this;
        }

        public Criteria andUregtimeEqualTo(Date value) {
            addCriterionForJDBCDate("uregtime =", value, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("uregtime <>", value, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeGreaterThan(Date value) {
            addCriterionForJDBCDate("uregtime >", value, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("uregtime >=", value, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeLessThan(Date value) {
            addCriterionForJDBCDate("uregtime <", value, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("uregtime <=", value, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeIn(List<Date> values) {
            addCriterionForJDBCDate("uregtime in", values, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("uregtime not in", values, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("uregtime between", value1, value2, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUregtimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("uregtime not between", value1, value2, "uregtime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeIsNull() {
            addCriterion("ulastacctime is null");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeIsNotNull() {
            addCriterion("ulastacctime is not null");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeEqualTo(Date value) {
            addCriterionForJDBCDate("ulastacctime =", value, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("ulastacctime <>", value, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeGreaterThan(Date value) {
            addCriterionForJDBCDate("ulastacctime >", value, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("ulastacctime >=", value, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeLessThan(Date value) {
            addCriterionForJDBCDate("ulastacctime <", value, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("ulastacctime <=", value, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeIn(List<Date> values) {
            addCriterionForJDBCDate("ulastacctime in", values, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("ulastacctime not in", values, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("ulastacctime between", value1, value2, "ulastacctime");
            return (Criteria) this;
        }

        public Criteria andUlastacctimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("ulastacctime not between", value1, value2, "ulastacctime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}