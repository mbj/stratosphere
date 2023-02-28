module Stratosphere.WAFv2.LoggingConfiguration.FilterProperty (
        module Exports, FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.ConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterProperty
  = FilterProperty {behavior :: (Value Prelude.Text),
                    conditions :: [ConditionProperty],
                    requirement :: (Value Prelude.Text)}
mkFilterProperty ::
  Value Prelude.Text
  -> [ConditionProperty] -> Value Prelude.Text -> FilterProperty
mkFilterProperty behavior conditions requirement
  = FilterProperty
      {behavior = behavior, conditions = conditions,
       requirement = requirement}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.Filter",
         supportsTags = Prelude.False,
         properties = ["Behavior" JSON..= behavior,
                       "Conditions" JSON..= conditions,
                       "Requirement" JSON..= requirement]}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        ["Behavior" JSON..= behavior, "Conditions" JSON..= conditions,
         "Requirement" JSON..= requirement]
instance Property "Behavior" FilterProperty where
  type PropertyType "Behavior" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {behavior = newValue, ..}
instance Property "Conditions" FilterProperty where
  type PropertyType "Conditions" FilterProperty = [ConditionProperty]
  set newValue FilterProperty {..}
    = FilterProperty {conditions = newValue, ..}
instance Property "Requirement" FilterProperty where
  type PropertyType "Requirement" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {requirement = newValue, ..}