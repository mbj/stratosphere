module Stratosphere.EMR.SecurityConfiguration (
        SecurityConfiguration(..), mkSecurityConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html>
    SecurityConfiguration {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-name>
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-securityconfiguration.html#cfn-emr-securityconfiguration-securityconfiguration>
                           securityConfiguration :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityConfiguration :: JSON.Object -> SecurityConfiguration
mkSecurityConfiguration securityConfiguration
  = SecurityConfiguration
      {haddock_workaround_ = (),
       securityConfiguration = securityConfiguration,
       name = Prelude.Nothing}
instance ToResourceProperties SecurityConfiguration where
  toResourceProperties SecurityConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::EMR::SecurityConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityConfiguration" JSON..= securityConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON SecurityConfiguration where
  toJSON SecurityConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityConfiguration" JSON..= securityConfiguration]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "Name" SecurityConfiguration where
  type PropertyType "Name" SecurityConfiguration = Value Prelude.Text
  set newValue SecurityConfiguration {..}
    = SecurityConfiguration {name = Prelude.pure newValue, ..}
instance Property "SecurityConfiguration" SecurityConfiguration where
  type PropertyType "SecurityConfiguration" SecurityConfiguration = JSON.Object
  set newValue SecurityConfiguration {..}
    = SecurityConfiguration {securityConfiguration = newValue, ..}