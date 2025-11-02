module Stratosphere.EKS.Nodegroup.NodeRepairConfigProperty (
        NodeRepairConfigProperty(..), mkNodeRepairConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeRepairConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-noderepairconfig.html>
    NodeRepairConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-noderepairconfig.html#cfn-eks-nodegroup-noderepairconfig-enabled>
                              enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeRepairConfigProperty :: NodeRepairConfigProperty
mkNodeRepairConfigProperty
  = NodeRepairConfigProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties NodeRepairConfigProperty where
  toResourceProperties NodeRepairConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Nodegroup.NodeRepairConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON NodeRepairConfigProperty where
  toJSON NodeRepairConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" NodeRepairConfigProperty where
  type PropertyType "Enabled" NodeRepairConfigProperty = Value Prelude.Bool
  set newValue NodeRepairConfigProperty {..}
    = NodeRepairConfigProperty {enabled = Prelude.pure newValue, ..}