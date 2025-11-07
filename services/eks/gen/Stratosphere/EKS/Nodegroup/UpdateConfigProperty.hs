module Stratosphere.EKS.Nodegroup.UpdateConfigProperty (
        UpdateConfigProperty(..), mkUpdateConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpdateConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-updateconfig.html>
    UpdateConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-updateconfig.html#cfn-eks-nodegroup-updateconfig-maxunavailable>
                          maxUnavailable :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-updateconfig.html#cfn-eks-nodegroup-updateconfig-maxunavailablepercentage>
                          maxUnavailablePercentage :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-updateconfig.html#cfn-eks-nodegroup-updateconfig-updatestrategy>
                          updateStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdateConfigProperty :: UpdateConfigProperty
mkUpdateConfigProperty
  = UpdateConfigProperty
      {haddock_workaround_ = (), maxUnavailable = Prelude.Nothing,
       maxUnavailablePercentage = Prelude.Nothing,
       updateStrategy = Prelude.Nothing}
instance ToResourceProperties UpdateConfigProperty where
  toResourceProperties UpdateConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Nodegroup.UpdateConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxUnavailable" Prelude.<$> maxUnavailable,
                            (JSON..=) "MaxUnavailablePercentage"
                              Prelude.<$> maxUnavailablePercentage,
                            (JSON..=) "UpdateStrategy" Prelude.<$> updateStrategy])}
instance JSON.ToJSON UpdateConfigProperty where
  toJSON UpdateConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxUnavailable" Prelude.<$> maxUnavailable,
               (JSON..=) "MaxUnavailablePercentage"
                 Prelude.<$> maxUnavailablePercentage,
               (JSON..=) "UpdateStrategy" Prelude.<$> updateStrategy]))
instance Property "MaxUnavailable" UpdateConfigProperty where
  type PropertyType "MaxUnavailable" UpdateConfigProperty = Value Prelude.Double
  set newValue UpdateConfigProperty {..}
    = UpdateConfigProperty {maxUnavailable = Prelude.pure newValue, ..}
instance Property "MaxUnavailablePercentage" UpdateConfigProperty where
  type PropertyType "MaxUnavailablePercentage" UpdateConfigProperty = Value Prelude.Double
  set newValue UpdateConfigProperty {..}
    = UpdateConfigProperty
        {maxUnavailablePercentage = Prelude.pure newValue, ..}
instance Property "UpdateStrategy" UpdateConfigProperty where
  type PropertyType "UpdateStrategy" UpdateConfigProperty = Value Prelude.Text
  set newValue UpdateConfigProperty {..}
    = UpdateConfigProperty {updateStrategy = Prelude.pure newValue, ..}