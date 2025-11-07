module Stratosphere.Connect.EmailAddress.AliasConfigurationProperty (
        AliasConfigurationProperty(..), mkAliasConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AliasConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-emailaddress-aliasconfiguration.html>
    AliasConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-emailaddress-aliasconfiguration.html#cfn-connect-emailaddress-aliasconfiguration-emailaddressarn>
                                emailAddressArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAliasConfigurationProperty ::
  Value Prelude.Text -> AliasConfigurationProperty
mkAliasConfigurationProperty emailAddressArn
  = AliasConfigurationProperty
      {haddock_workaround_ = (), emailAddressArn = emailAddressArn}
instance ToResourceProperties AliasConfigurationProperty where
  toResourceProperties AliasConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EmailAddress.AliasConfiguration",
         supportsTags = Prelude.False,
         properties = ["EmailAddressArn" JSON..= emailAddressArn]}
instance JSON.ToJSON AliasConfigurationProperty where
  toJSON AliasConfigurationProperty {..}
    = JSON.object ["EmailAddressArn" JSON..= emailAddressArn]
instance Property "EmailAddressArn" AliasConfigurationProperty where
  type PropertyType "EmailAddressArn" AliasConfigurationProperty = Value Prelude.Text
  set newValue AliasConfigurationProperty {..}
    = AliasConfigurationProperty {emailAddressArn = newValue, ..}