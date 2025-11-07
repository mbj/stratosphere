module Stratosphere.OpenSearchServerless.SecurityConfig.IamFederationConfigOptionsProperty (
        IamFederationConfigOptionsProperty(..),
        mkIamFederationConfigOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamFederationConfigOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-securityconfig-iamfederationconfigoptions.html>
    IamFederationConfigOptionsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-securityconfig-iamfederationconfigoptions.html#cfn-opensearchserverless-securityconfig-iamfederationconfigoptions-groupattribute>
                                        groupAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-securityconfig-iamfederationconfigoptions.html#cfn-opensearchserverless-securityconfig-iamfederationconfigoptions-userattribute>
                                        userAttribute :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamFederationConfigOptionsProperty ::
  IamFederationConfigOptionsProperty
mkIamFederationConfigOptionsProperty
  = IamFederationConfigOptionsProperty
      {haddock_workaround_ = (), groupAttribute = Prelude.Nothing,
       userAttribute = Prelude.Nothing}
instance ToResourceProperties IamFederationConfigOptionsProperty where
  toResourceProperties IamFederationConfigOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::SecurityConfig.IamFederationConfigOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupAttribute" Prelude.<$> groupAttribute,
                            (JSON..=) "UserAttribute" Prelude.<$> userAttribute])}
instance JSON.ToJSON IamFederationConfigOptionsProperty where
  toJSON IamFederationConfigOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupAttribute" Prelude.<$> groupAttribute,
               (JSON..=) "UserAttribute" Prelude.<$> userAttribute]))
instance Property "GroupAttribute" IamFederationConfigOptionsProperty where
  type PropertyType "GroupAttribute" IamFederationConfigOptionsProperty = Value Prelude.Text
  set newValue IamFederationConfigOptionsProperty {..}
    = IamFederationConfigOptionsProperty
        {groupAttribute = Prelude.pure newValue, ..}
instance Property "UserAttribute" IamFederationConfigOptionsProperty where
  type PropertyType "UserAttribute" IamFederationConfigOptionsProperty = Value Prelude.Text
  set newValue IamFederationConfigOptionsProperty {..}
    = IamFederationConfigOptionsProperty
        {userAttribute = Prelude.pure newValue, ..}