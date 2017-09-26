package org.fjh.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class TopicExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TopicExample() {
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

        public Criteria andTidIsNull() {
            addCriterion("tid is null");
            return (Criteria) this;
        }

        public Criteria andTidIsNotNull() {
            addCriterion("tid is not null");
            return (Criteria) this;
        }

        public Criteria andTidEqualTo(String value) {
            addCriterion("tid =", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotEqualTo(String value) {
            addCriterion("tid <>", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidGreaterThan(String value) {
            addCriterion("tid >", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidGreaterThanOrEqualTo(String value) {
            addCriterion("tid >=", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidLessThan(String value) {
            addCriterion("tid <", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidLessThanOrEqualTo(String value) {
            addCriterion("tid <=", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidLike(String value) {
            addCriterion("tid like", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotLike(String value) {
            addCriterion("tid not like", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidIn(List<String> values) {
            addCriterion("tid in", values, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotIn(List<String> values) {
            addCriterion("tid not in", values, "tid");
            return (Criteria) this;
        }

        public Criteria andTidBetween(String value1, String value2) {
            addCriterion("tid between", value1, value2, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotBetween(String value1, String value2) {
            addCriterion("tid not between", value1, value2, "tid");
            return (Criteria) this;
        }

        public Criteria andTnameIsNull() {
            addCriterion("tname is null");
            return (Criteria) this;
        }

        public Criteria andTnameIsNotNull() {
            addCriterion("tname is not null");
            return (Criteria) this;
        }

        public Criteria andTnameEqualTo(String value) {
            addCriterion("tname =", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameNotEqualTo(String value) {
            addCriterion("tname <>", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameGreaterThan(String value) {
            addCriterion("tname >", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameGreaterThanOrEqualTo(String value) {
            addCriterion("tname >=", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameLessThan(String value) {
            addCriterion("tname <", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameLessThanOrEqualTo(String value) {
            addCriterion("tname <=", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameLike(String value) {
            addCriterion("tname like", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameNotLike(String value) {
            addCriterion("tname not like", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameIn(List<String> values) {
            addCriterion("tname in", values, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameNotIn(List<String> values) {
            addCriterion("tname not in", values, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameBetween(String value1, String value2) {
            addCriterion("tname between", value1, value2, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameNotBetween(String value1, String value2) {
            addCriterion("tname not between", value1, value2, "tname");
            return (Criteria) this;
        }

        public Criteria andTcontentIsNull() {
            addCriterion("tcontent is null");
            return (Criteria) this;
        }

        public Criteria andTcontentIsNotNull() {
            addCriterion("tcontent is not null");
            return (Criteria) this;
        }

        public Criteria andTcontentEqualTo(String value) {
            addCriterion("tcontent =", value, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentNotEqualTo(String value) {
            addCriterion("tcontent <>", value, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentGreaterThan(String value) {
            addCriterion("tcontent >", value, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentGreaterThanOrEqualTo(String value) {
            addCriterion("tcontent >=", value, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentLessThan(String value) {
            addCriterion("tcontent <", value, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentLessThanOrEqualTo(String value) {
            addCriterion("tcontent <=", value, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentLike(String value) {
            addCriterion("tcontent like", value, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentNotLike(String value) {
            addCriterion("tcontent not like", value, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentIn(List<String> values) {
            addCriterion("tcontent in", values, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentNotIn(List<String> values) {
            addCriterion("tcontent not in", values, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentBetween(String value1, String value2) {
            addCriterion("tcontent between", value1, value2, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTcontentNotBetween(String value1, String value2) {
            addCriterion("tcontent not between", value1, value2, "tcontent");
            return (Criteria) this;
        }

        public Criteria andTreadedIsNull() {
            addCriterion("treaded is null");
            return (Criteria) this;
        }

        public Criteria andTreadedIsNotNull() {
            addCriterion("treaded is not null");
            return (Criteria) this;
        }

        public Criteria andTreadedEqualTo(Integer value) {
            addCriterion("treaded =", value, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedNotEqualTo(Integer value) {
            addCriterion("treaded <>", value, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedGreaterThan(Integer value) {
            addCriterion("treaded >", value, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedGreaterThanOrEqualTo(Integer value) {
            addCriterion("treaded >=", value, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedLessThan(Integer value) {
            addCriterion("treaded <", value, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedLessThanOrEqualTo(Integer value) {
            addCriterion("treaded <=", value, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedIn(List<Integer> values) {
            addCriterion("treaded in", values, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedNotIn(List<Integer> values) {
            addCriterion("treaded not in", values, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedBetween(Integer value1, Integer value2) {
            addCriterion("treaded between", value1, value2, "treaded");
            return (Criteria) this;
        }

        public Criteria andTreadedNotBetween(Integer value1, Integer value2) {
            addCriterion("treaded not between", value1, value2, "treaded");
            return (Criteria) this;
        }

        public Criteria andTgoodedIsNull() {
            addCriterion("tgooded is null");
            return (Criteria) this;
        }

        public Criteria andTgoodedIsNotNull() {
            addCriterion("tgooded is not null");
            return (Criteria) this;
        }

        public Criteria andTgoodedEqualTo(Integer value) {
            addCriterion("tgooded =", value, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedNotEqualTo(Integer value) {
            addCriterion("tgooded <>", value, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedGreaterThan(Integer value) {
            addCriterion("tgooded >", value, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedGreaterThanOrEqualTo(Integer value) {
            addCriterion("tgooded >=", value, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedLessThan(Integer value) {
            addCriterion("tgooded <", value, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedLessThanOrEqualTo(Integer value) {
            addCriterion("tgooded <=", value, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedIn(List<Integer> values) {
            addCriterion("tgooded in", values, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedNotIn(List<Integer> values) {
            addCriterion("tgooded not in", values, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedBetween(Integer value1, Integer value2) {
            addCriterion("tgooded between", value1, value2, "tgooded");
            return (Criteria) this;
        }

        public Criteria andTgoodedNotBetween(Integer value1, Integer value2) {
            addCriterion("tgooded not between", value1, value2, "tgooded");
            return (Criteria) this;
        }

        public Criteria andBidIsNull() {
            addCriterion("bid is null");
            return (Criteria) this;
        }

        public Criteria andBidIsNotNull() {
            addCriterion("bid is not null");
            return (Criteria) this;
        }

        public Criteria andBidEqualTo(String value) {
            addCriterion("bid =", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotEqualTo(String value) {
            addCriterion("bid <>", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidGreaterThan(String value) {
            addCriterion("bid >", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidGreaterThanOrEqualTo(String value) {
            addCriterion("bid >=", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLessThan(String value) {
            addCriterion("bid <", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLessThanOrEqualTo(String value) {
            addCriterion("bid <=", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLike(String value) {
            addCriterion("bid like", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotLike(String value) {
            addCriterion("bid not like", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidIn(List<String> values) {
            addCriterion("bid in", values, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotIn(List<String> values) {
            addCriterion("bid not in", values, "bid");
            return (Criteria) this;
        }

        public Criteria andBidBetween(String value1, String value2) {
            addCriterion("bid between", value1, value2, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotBetween(String value1, String value2) {
            addCriterion("bid not between", value1, value2, "bid");
            return (Criteria) this;
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

        public Criteria andTpublishdateIsNull() {
            addCriterion("tpublishdate is null");
            return (Criteria) this;
        }

        public Criteria andTpublishdateIsNotNull() {
            addCriterion("tpublishdate is not null");
            return (Criteria) this;
        }

        public Criteria andTpublishdateEqualTo(Date value) {
            addCriterionForJDBCDate("tpublishdate =", value, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateNotEqualTo(Date value) {
            addCriterionForJDBCDate("tpublishdate <>", value, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateGreaterThan(Date value) {
            addCriterionForJDBCDate("tpublishdate >", value, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("tpublishdate >=", value, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateLessThan(Date value) {
            addCriterionForJDBCDate("tpublishdate <", value, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("tpublishdate <=", value, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateIn(List<Date> values) {
            addCriterionForJDBCDate("tpublishdate in", values, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateNotIn(List<Date> values) {
            addCriterionForJDBCDate("tpublishdate not in", values, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("tpublishdate between", value1, value2, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTpublishdateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("tpublishdate not between", value1, value2, "tpublishdate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateIsNull() {
            addCriterion("tmodfitydate is null");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateIsNotNull() {
            addCriterion("tmodfitydate is not null");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateEqualTo(Date value) {
            addCriterionForJDBCDate("tmodfitydate =", value, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateNotEqualTo(Date value) {
            addCriterionForJDBCDate("tmodfitydate <>", value, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateGreaterThan(Date value) {
            addCriterionForJDBCDate("tmodfitydate >", value, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("tmodfitydate >=", value, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateLessThan(Date value) {
            addCriterionForJDBCDate("tmodfitydate <", value, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("tmodfitydate <=", value, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateIn(List<Date> values) {
            addCriterionForJDBCDate("tmodfitydate in", values, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateNotIn(List<Date> values) {
            addCriterionForJDBCDate("tmodfitydate not in", values, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("tmodfitydate between", value1, value2, "tmodfitydate");
            return (Criteria) this;
        }

        public Criteria andTmodfitydateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("tmodfitydate not between", value1, value2, "tmodfitydate");
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