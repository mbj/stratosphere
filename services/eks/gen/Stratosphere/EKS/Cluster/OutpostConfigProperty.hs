module Stratosphere.EKS.Cluster.OutpostConfigProperty (
        module Exports, OutpostConfigProperty(..), mkOutpostConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ControlPlanePlacementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutpostConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-outpostconfig.html>
    OutpostConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-outpostconfig.html#cfn-eks-cluster-outpostconfig-controlplaneinstancetype>
                           controlPlaneInstanceType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-outpostconfig.html#cfn-eks-cluster-outpostconfig-controlplaneplacement>
                           controlPlanePlacement :: (Prelude.Maybe ControlPlanePlacementProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-outpostconfig.html#cfn-eks-cluster-outpostconfig-outpostarns>
                           outpostArns :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutpostConfigProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> OutpostConfigProperty
mkOutpostConfigProperty controlPlaneInstanceType outpostArns
  = OutpostConfigProperty
      {haddock_workaround_ = (),
       controlPlaneInstanceType = controlPlaneInstanceType,
       outpostArns = outpostArns, controlPlanePlacement = Prelude.Nothing}
instance ToResourceProperties OutpostConfigProperty where
  toResourceProperties OutpostConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.OutpostConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ControlPlaneInstanceType" JSON..= controlPlaneInstanceType,
                            "OutpostArns" JSON..= outpostArns]
                           (Prelude.catMaybes
                              [(JSON..=) "ControlPlanePlacement"
                                 Prelude.<$> controlPlanePlacement]))}
instance JSON.ToJSON OutpostConfigProperty where
  toJSON OutpostConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ControlPlaneInstanceType" JSON..= controlPlaneInstanceType,
               "OutpostArns" JSON..= outpostArns]
              (Prelude.catMaybes
                 [(JSON..=) "ControlPlanePlacement"
                    Prelude.<$> controlPlanePlacement])))
instance Property "ControlPlaneInstanceType" OutpostConfigProperty where
  type PropertyType "ControlPlaneInstanceType" OutpostConfigProperty = Value Prelude.Text
  set newValue OutpostConfigProperty {..}
    = OutpostConfigProperty {controlPlaneInstanceType = newValue, ..}
instance Property "ControlPlanePlacement" OutpostConfigProperty where
  type PropertyType "ControlPlanePlacement" OutpostConfigProperty = ControlPlanePlacementProperty
  set newValue OutpostConfigProperty {..}
    = OutpostConfigProperty
        {controlPlanePlacement = Prelude.pure newValue, ..}
instance Property "OutpostArns" OutpostConfigProperty where
  type PropertyType "OutpostArns" OutpostConfigProperty = ValueList Prelude.Text
  set newValue OutpostConfigProperty {..}
    = OutpostConfigProperty {outpostArns = newValue, ..}