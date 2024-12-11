module Stratosphere.EKS.Cluster.UpgradePolicyProperty (
        UpgradePolicyProperty(..), mkUpgradePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpgradePolicyProperty
  = UpgradePolicyProperty {supportType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpgradePolicyProperty :: UpgradePolicyProperty
mkUpgradePolicyProperty
  = UpgradePolicyProperty {supportType = Prelude.Nothing}
instance ToResourceProperties UpgradePolicyProperty where
  toResourceProperties UpgradePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.UpgradePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SupportType" Prelude.<$> supportType])}
instance JSON.ToJSON UpgradePolicyProperty where
  toJSON UpgradePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SupportType" Prelude.<$> supportType]))
instance Property "SupportType" UpgradePolicyProperty where
  type PropertyType "SupportType" UpgradePolicyProperty = Value Prelude.Text
  set newValue UpgradePolicyProperty {}
    = UpgradePolicyProperty {supportType = Prelude.pure newValue, ..}