module Stratosphere.AppConfig.ConfigurationProfile.ValidatorsProperty (
        ValidatorsProperty(..), mkValidatorsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidatorsProperty
  = ValidatorsProperty {content :: (Prelude.Maybe (Value Prelude.Text)),
                        type' :: (Prelude.Maybe (Value Prelude.Text))}
mkValidatorsProperty :: ValidatorsProperty
mkValidatorsProperty
  = ValidatorsProperty
      {content = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ValidatorsProperty where
  toResourceProperties ValidatorsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::ConfigurationProfile.Validators",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Content" Prelude.<$> content,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ValidatorsProperty where
  toJSON ValidatorsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Content" Prelude.<$> content,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Content" ValidatorsProperty where
  type PropertyType "Content" ValidatorsProperty = Value Prelude.Text
  set newValue ValidatorsProperty {..}
    = ValidatorsProperty {content = Prelude.pure newValue, ..}
instance Property "Type" ValidatorsProperty where
  type PropertyType "Type" ValidatorsProperty = Value Prelude.Text
  set newValue ValidatorsProperty {..}
    = ValidatorsProperty {type' = Prelude.pure newValue, ..}