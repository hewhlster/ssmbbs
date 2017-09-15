package org.fjh.entity;

import java.util.ArrayList;
import java.util.List;

public class BoardExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BoardExample() {
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

        public Criteria andBnameIsNull() {
            addCriterion("bname is null");
            return (Criteria) this;
        }

        public Criteria andBnameIsNotNull() {
            addCriterion("bname is not null");
            return (Criteria) this;
        }

        public Criteria andBnameEqualTo(String value) {
            addCriterion("bname =", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotEqualTo(String value) {
            addCriterion("bname <>", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameGreaterThan(String value) {
            addCriterion("bname >", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameGreaterThanOrEqualTo(String value) {
            addCriterion("bname >=", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLessThan(String value) {
            addCriterion("bname <", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLessThanOrEqualTo(String value) {
            addCriterion("bname <=", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLike(String value) {
            addCriterion("bname like", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotLike(String value) {
            addCriterion("bname not like", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameIn(List<String> values) {
            addCriterion("bname in", values, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotIn(List<String> values) {
            addCriterion("bname not in", values, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameBetween(String value1, String value2) {
            addCriterion("bname between", value1, value2, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotBetween(String value1, String value2) {
            addCriterion("bname not between", value1, value2, "bname");
            return (Criteria) this;
        }

        public Criteria andBparentIsNull() {
            addCriterion("bparent is null");
            return (Criteria) this;
        }

        public Criteria andBparentIsNotNull() {
            addCriterion("bparent is not null");
            return (Criteria) this;
        }

        public Criteria andBparentEqualTo(String value) {
            addCriterion("bparent =", value, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentNotEqualTo(String value) {
            addCriterion("bparent <>", value, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentGreaterThan(String value) {
            addCriterion("bparent >", value, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentGreaterThanOrEqualTo(String value) {
            addCriterion("bparent >=", value, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentLessThan(String value) {
            addCriterion("bparent <", value, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentLessThanOrEqualTo(String value) {
            addCriterion("bparent <=", value, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentLike(String value) {
            addCriterion("bparent like", value, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentNotLike(String value) {
            addCriterion("bparent not like", value, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentIn(List<String> values) {
            addCriterion("bparent in", values, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentNotIn(List<String> values) {
            addCriterion("bparent not in", values, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentBetween(String value1, String value2) {
            addCriterion("bparent between", value1, value2, "bparent");
            return (Criteria) this;
        }

        public Criteria andBparentNotBetween(String value1, String value2) {
            addCriterion("bparent not between", value1, value2, "bparent");
            return (Criteria) this;
        }

        public Criteria andBimgIsNull() {
            addCriterion("bimg is null");
            return (Criteria) this;
        }

        public Criteria andBimgIsNotNull() {
            addCriterion("bimg is not null");
            return (Criteria) this;
        }

        public Criteria andBimgEqualTo(String value) {
            addCriterion("bimg =", value, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgNotEqualTo(String value) {
            addCriterion("bimg <>", value, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgGreaterThan(String value) {
            addCriterion("bimg >", value, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgGreaterThanOrEqualTo(String value) {
            addCriterion("bimg >=", value, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgLessThan(String value) {
            addCriterion("bimg <", value, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgLessThanOrEqualTo(String value) {
            addCriterion("bimg <=", value, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgLike(String value) {
            addCriterion("bimg like", value, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgNotLike(String value) {
            addCriterion("bimg not like", value, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgIn(List<String> values) {
            addCriterion("bimg in", values, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgNotIn(List<String> values) {
            addCriterion("bimg not in", values, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgBetween(String value1, String value2) {
            addCriterion("bimg between", value1, value2, "bimg");
            return (Criteria) this;
        }

        public Criteria andBimgNotBetween(String value1, String value2) {
            addCriterion("bimg not between", value1, value2, "bimg");
            return (Criteria) this;
        }

        public Criteria andBmemoIsNull() {
            addCriterion("bmemo is null");
            return (Criteria) this;
        }

        public Criteria andBmemoIsNotNull() {
            addCriterion("bmemo is not null");
            return (Criteria) this;
        }

        public Criteria andBmemoEqualTo(String value) {
            addCriterion("bmemo =", value, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoNotEqualTo(String value) {
            addCriterion("bmemo <>", value, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoGreaterThan(String value) {
            addCriterion("bmemo >", value, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoGreaterThanOrEqualTo(String value) {
            addCriterion("bmemo >=", value, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoLessThan(String value) {
            addCriterion("bmemo <", value, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoLessThanOrEqualTo(String value) {
            addCriterion("bmemo <=", value, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoLike(String value) {
            addCriterion("bmemo like", value, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoNotLike(String value) {
            addCriterion("bmemo not like", value, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoIn(List<String> values) {
            addCriterion("bmemo in", values, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoNotIn(List<String> values) {
            addCriterion("bmemo not in", values, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoBetween(String value1, String value2) {
            addCriterion("bmemo between", value1, value2, "bmemo");
            return (Criteria) this;
        }

        public Criteria andBmemoNotBetween(String value1, String value2) {
            addCriterion("bmemo not between", value1, value2, "bmemo");
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