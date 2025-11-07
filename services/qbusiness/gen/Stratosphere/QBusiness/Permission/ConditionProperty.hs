module Stratosphere.QBusiness.Permission.ConditionProperty (
        ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-permission-condition.html>
    ConditionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-permission-condition.html#cfn-qbusiness-permission-condition-conditionkey>
                       conditionKey :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-permission-condition.html#cfn-qbusiness-permission-condition-conditionoperator>
                       conditionOperator :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-permission-condition.html#cfn-qbusiness-permission-condition-conditionvalues>
                       conditionValues :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> ConditionProperty
mkConditionProperty conditionKey conditionOperator conditionValues
  = ConditionProperty
      {haddock_workaround_ = (), conditionKey = conditionKey,
       conditionOperator = conditionOperator,
       conditionValues = conditionValues}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Permission.Condition",
         supportsTags = Prelude.False,
         properties = ["ConditionKey" JSON..= conditionKey,
                       "ConditionOperator" JSON..= conditionOperator,
                       "ConditionValues" JSON..= conditionValues]}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object
        ["ConditionKey" JSON..= conditionKey,
         "ConditionOperator" JSON..= conditionOperator,
         "ConditionValues" JSON..= conditionValues]
instance Property "ConditionKey" ConditionProperty where
  type PropertyType "ConditionKey" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {conditionKey = newValue, ..}
instance Property "ConditionOperator" ConditionProperty where
  type PropertyType "ConditionOperator" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {conditionOperator = newValue, ..}
instance Property "ConditionValues" ConditionProperty where
  type PropertyType "ConditionValues" ConditionProperty = ValueList Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {conditionValues = newValue, ..}