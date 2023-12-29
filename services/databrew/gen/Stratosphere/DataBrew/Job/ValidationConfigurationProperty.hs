module Stratosphere.DataBrew.Job.ValidationConfigurationProperty (
        ValidationConfigurationProperty(..),
        mkValidationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidationConfigurationProperty
  = ValidationConfigurationProperty {rulesetArn :: (Value Prelude.Text),
                                     validationMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidationConfigurationProperty ::
  Value Prelude.Text -> ValidationConfigurationProperty
mkValidationConfigurationProperty rulesetArn
  = ValidationConfigurationProperty
      {rulesetArn = rulesetArn, validationMode = Prelude.Nothing}
instance ToResourceProperties ValidationConfigurationProperty where
  toResourceProperties ValidationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.ValidationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RulesetArn" JSON..= rulesetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ValidationMode" Prelude.<$> validationMode]))}
instance JSON.ToJSON ValidationConfigurationProperty where
  toJSON ValidationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RulesetArn" JSON..= rulesetArn]
              (Prelude.catMaybes
                 [(JSON..=) "ValidationMode" Prelude.<$> validationMode])))
instance Property "RulesetArn" ValidationConfigurationProperty where
  type PropertyType "RulesetArn" ValidationConfigurationProperty = Value Prelude.Text
  set newValue ValidationConfigurationProperty {..}
    = ValidationConfigurationProperty {rulesetArn = newValue, ..}
instance Property "ValidationMode" ValidationConfigurationProperty where
  type PropertyType "ValidationMode" ValidationConfigurationProperty = Value Prelude.Text
  set newValue ValidationConfigurationProperty {..}
    = ValidationConfigurationProperty
        {validationMode = Prelude.pure newValue, ..}