module Stratosphere.AppConfig.ConfigurationProfile.ValidatorsProperty (
        ValidatorsProperty(..), mkValidatorsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidatorsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html>
    ValidatorsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html#cfn-appconfig-configurationprofile-validators-content>
                        content :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-validators.html#cfn-appconfig-configurationprofile-validators-type>
                        type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidatorsProperty :: ValidatorsProperty
mkValidatorsProperty
  = ValidatorsProperty
      {haddock_workaround_ = (), content = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties ValidatorsProperty where
  toResourceProperties ValidatorsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::ConfigurationProfile.Validators",
         supportsTags = Prelude.False,
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