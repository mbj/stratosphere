module Stratosphere.NetworkManager.CoreNetwork (
        CoreNetwork(..), mkCoreNetwork
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CoreNetwork
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-corenetwork.html>
    CoreNetwork {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-corenetwork.html#cfn-networkmanager-corenetwork-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-corenetwork.html#cfn-networkmanager-corenetwork-globalnetworkid>
                 globalNetworkId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-corenetwork.html#cfn-networkmanager-corenetwork-policydocument>
                 policyDocument :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkmanager-corenetwork.html#cfn-networkmanager-corenetwork-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoreNetwork :: Value Prelude.Text -> CoreNetwork
mkCoreNetwork globalNetworkId
  = CoreNetwork
      {haddock_workaround_ = (), globalNetworkId = globalNetworkId,
       description = Prelude.Nothing, policyDocument = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CoreNetwork where
  toResourceProperties CoreNetwork {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::CoreNetwork",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GlobalNetworkId" JSON..= globalNetworkId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CoreNetwork where
  toJSON CoreNetwork {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GlobalNetworkId" JSON..= globalNetworkId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" CoreNetwork where
  type PropertyType "Description" CoreNetwork = Value Prelude.Text
  set newValue CoreNetwork {..}
    = CoreNetwork {description = Prelude.pure newValue, ..}
instance Property "GlobalNetworkId" CoreNetwork where
  type PropertyType "GlobalNetworkId" CoreNetwork = Value Prelude.Text
  set newValue CoreNetwork {..}
    = CoreNetwork {globalNetworkId = newValue, ..}
instance Property "PolicyDocument" CoreNetwork where
  type PropertyType "PolicyDocument" CoreNetwork = JSON.Object
  set newValue CoreNetwork {..}
    = CoreNetwork {policyDocument = Prelude.pure newValue, ..}
instance Property "Tags" CoreNetwork where
  type PropertyType "Tags" CoreNetwork = [Tag]
  set newValue CoreNetwork {..}
    = CoreNetwork {tags = Prelude.pure newValue, ..}