package org.fjh.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ReplyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReplyExample() {
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

        public Criteria andRidIsNull() {
            addCriterion("rid is null");
            return (Criteria) this;
        }

        public Criteria andRidIsNotNull() {
            addCriterion("rid is not null");
            return (Criteria) this;
        }

        public Criteria andRidEqualTo(String value) {
            addCriterion("rid =", value, "rid");
            return (Criteria) this;
        }

        public Criteria andRidNotEqualTo(String value) {
            addCriterion("rid <>", value, "rid");
            return (Criteria) this;
        }

        public Criteria andRidGreaterThan(String value) {
            addCriterion("rid >", value, "rid");
            return (Criteria) this;
        }

        public Criteria andRidGreaterThanOrEqualTo(String value) {
            addCriterion("rid >=", value, "rid");
            return (Criteria) this;
        }

        public Criteria andRidLessThan(String value) {
            addCriterion("rid <", value, "rid");
            return (Criteria) this;
        }

        public Criteria andRidLessThanOrEqualTo(String value) {
            addCriterion("rid <=", value, "rid");
            return (Criteria) this;
        }

        public Criteria andRidLike(String value) {
            addCriterion("rid like", value, "rid");
            return (Criteria) this;
        }

        public Criteria andRidNotLike(String value) {
            addCriterion("rid not like", value, "rid");
            return (Criteria) this;
        }

        public Criteria andRidIn(List<String> values) {
            addCriterion("rid in", values, "rid");
            return (Criteria) this;
        }

        public Criteria andRidNotIn(List<String> values) {
            addCriterion("rid not in", values, "rid");
            return (Criteria) this;
        }

        public Criteria andRidBetween(String value1, String value2) {
            addCriterion("rid between", value1, value2, "rid");
            return (Criteria) this;
        }

        public Criteria andRidNotBetween(String value1, String value2) {
            addCriterion("rid not between", value1, value2, "rid");
            return (Criteria) this;
        }

        public Criteria andRnameIsNull() {
            addCriterion("rname is null");
            return (Criteria) this;
        }

        public Criteria andRnameIsNotNull() {
            addCriterion("rname is not null");
            return (Criteria) this;
        }

        public Criteria andRnameEqualTo(String value) {
            addCriterion("rname =", value, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameNotEqualTo(String value) {
            addCriterion("rname <>", value, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameGreaterThan(String value) {
            addCriterion("rname >", value, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameGreaterThanOrEqualTo(String value) {
            addCriterion("rname >=", value, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameLessThan(String value) {
            addCriterion("rname <", value, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameLessThanOrEqualTo(String value) {
            addCriterion("rname <=", value, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameLike(String value) {
            addCriterion("rname like", value, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameNotLike(String value) {
            addCriterion("rname not like", value, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameIn(List<String> values) {
            addCriterion("rname in", values, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameNotIn(List<String> values) {
            addCriterion("rname not in", values, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameBetween(String value1, String value2) {
            addCriterion("rname between", value1, value2, "rname");
            return (Criteria) this;
        }

        public Criteria andRnameNotBetween(String value1, String value2) {
            addCriterion("rname not between", value1, value2, "rname");
            return (Criteria) this;
        }

        public Criteria andRcontentIsNull() {
            addCriterion("rcontent is null");
            return (Criteria) this;
        }

        public Criteria andRcontentIsNotNull() {
            addCriterion("rcontent is not null");
            return (Criteria) this;
        }

        public Criteria andRcontentEqualTo(String value) {
            addCriterion("rcontent =", value, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentNotEqualTo(String value) {
            addCriterion("rcontent <>", value, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentGreaterThan(String value) {
            addCriterion("rcontent >", value, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentGreaterThanOrEqualTo(String value) {
            addCriterion("rcontent >=", value, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentLessThan(String value) {
            addCriterion("rcontent <", value, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentLessThanOrEqualTo(String value) {
            addCriterion("rcontent <=", value, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentLike(String value) {
            addCriterion("rcontent like", value, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentNotLike(String value) {
            addCriterion("rcontent not like", value, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentIn(List<String> values) {
            addCriterion("rcontent in", values, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentNotIn(List<String> values) {
            addCriterion("rcontent not in", values, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentBetween(String value1, String value2) {
            addCriterion("rcontent between", value1, value2, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRcontentNotBetween(String value1, String value2) {
            addCriterion("rcontent not between", value1, value2, "rcontent");
            return (Criteria) this;
        }

        public Criteria andRreadedIsNull() {
            addCriterion("rreaded is null");
            return (Criteria) this;
        }

        public Criteria andRreadedIsNotNull() {
            addCriterion("rreaded is not null");
            return (Criteria) this;
        }

        public Criteria andRreadedEqualTo(Integer value) {
            addCriterion("rreaded =", value, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedNotEqualTo(Integer value) {
            addCriterion("rreaded <>", value, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedGreaterThan(Integer value) {
            addCriterion("rreaded >", value, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedGreaterThanOrEqualTo(Integer value) {
            addCriterion("rreaded >=", value, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedLessThan(Integer value) {
            addCriterion("rreaded <", value, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedLessThanOrEqualTo(Integer value) {
            addCriterion("rreaded <=", value, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedIn(List<Integer> values) {
            addCriterion("rreaded in", values, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedNotIn(List<Integer> values) {
            addCriterion("rreaded not in", values, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedBetween(Integer value1, Integer value2) {
            addCriterion("rreaded between", value1, value2, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRreadedNotBetween(Integer value1, Integer value2) {
            addCriterion("rreaded not between", value1, value2, "rreaded");
            return (Criteria) this;
        }

        public Criteria andRgoodedIsNull() {
            addCriterion("rgooded is null");
            return (Criteria) this;
        }

        public Criteria andRgoodedIsNotNull() {
            addCriterion("rgooded is not null");
            return (Criteria) this;
        }

        public Criteria andRgoodedEqualTo(Integer value) {
            addCriterion("rgooded =", value, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedNotEqualTo(Integer value) {
            addCriterion("rgooded <>", value, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedGreaterThan(Integer value) {
            addCriterion("rgooded >", value, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedGreaterThanOrEqualTo(Integer value) {
            addCriterion("rgooded >=", value, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedLessThan(Integer value) {
            addCriterion("rgooded <", value, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedLessThanOrEqualTo(Integer value) {
            addCriterion("rgooded <=", value, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedIn(List<Integer> values) {
            addCriterion("rgooded in", values, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedNotIn(List<Integer> values) {
            addCriterion("rgooded not in", values, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedBetween(Integer value1, Integer value2) {
            addCriterion("rgooded between", value1, value2, "rgooded");
            return (Criteria) this;
        }

        public Criteria andRgoodedNotBetween(Integer value1, Integer value2) {
            addCriterion("rgooded not between", value1, value2, "rgooded");
            return (Criteria) this;
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