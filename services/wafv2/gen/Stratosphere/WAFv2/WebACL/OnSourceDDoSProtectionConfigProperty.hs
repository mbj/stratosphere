module Stratosphere.WAFv2.WebACL.OnSourceDDoSProtectionConfigProperty (
        OnSourceDDoSProtectionConfigProperty(..),
        mkOnSourceDDoSProtectionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnSourceDDoSProtectionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-onsourceddosprotectionconfig.html>
    OnSourceDDoSProtectionConfigProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-onsourceddosprotectionconfig.html#cfn-wafv2-webacl-onsourceddosprotectionconfig-alblowreputationmode>
                                          aLBLowReputationMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnSourceDDoSProtectionConfigProperty ::
  Value Prelude.Text -> OnSourceDDoSProtectionConfigProperty
mkOnSourceDDoSProtectionConfigProperty aLBLowReputationMode
  = OnSourceDDoSProtectionConfigProperty
      {haddock_workaround_ = (),
       aLBLowReputationMode = aLBLowReputationMode}
instance ToResourceProperties OnSourceDDoSProtectionConfigProperty where
  toResourceProperties OnSourceDDoSProtectionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.OnSourceDDoSProtectionConfig",
         supportsTags = Prelude.False,
         properties = ["ALBLowReputationMode" JSON..= aLBLowReputationMode]}
instance JSON.ToJSON OnSourceDDoSProtectionConfigProperty where
  toJSON OnSourceDDoSProtectionConfigProperty {..}
    = JSON.object ["ALBLowReputationMode" JSON..= aLBLowReputationMode]
instance Property "ALBLowReputationMode" OnSourceDDoSProtectionConfigProperty where
  type PropertyType "ALBLowReputationMode" OnSourceDDoSProtectionConfigProperty = Value Prelude.Text
  set newValue OnSourceDDoSProtectionConfigProperty {..}
    = OnSourceDDoSProtectionConfigProperty
        {aLBLowReputationMode = newValue, ..}