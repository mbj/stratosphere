module Stratosphere.WorkSpacesWeb.IpAccessSettings.IpRuleProperty (
        IpRuleProperty(..), mkIpRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-ipaccesssettings-iprule.html>
    IpRuleProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-ipaccesssettings-iprule.html#cfn-workspacesweb-ipaccesssettings-iprule-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-ipaccesssettings-iprule.html#cfn-workspacesweb-ipaccesssettings-iprule-iprange>
                    ipRange :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpRuleProperty :: Value Prelude.Text -> IpRuleProperty
mkIpRuleProperty ipRange
  = IpRuleProperty
      {haddock_workaround_ = (), ipRange = ipRange,
       description = Prelude.Nothing}
instance ToResourceProperties IpRuleProperty where
  toResourceProperties IpRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::IpAccessSettings.IpRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpRange" JSON..= ipRange]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON IpRuleProperty where
  toJSON IpRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpRange" JSON..= ipRange]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" IpRuleProperty where
  type PropertyType "Description" IpRuleProperty = Value Prelude.Text
  set newValue IpRuleProperty {..}
    = IpRuleProperty {description = Prelude.pure newValue, ..}
instance Property "IpRange" IpRuleProperty where
  type PropertyType "IpRange" IpRuleProperty = Value Prelude.Text
  set newValue IpRuleProperty {..}
    = IpRuleProperty {ipRange = newValue, ..}