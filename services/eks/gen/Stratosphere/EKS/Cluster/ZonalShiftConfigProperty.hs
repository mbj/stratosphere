module Stratosphere.EKS.Cluster.ZonalShiftConfigProperty (
        ZonalShiftConfigProperty(..), mkZonalShiftConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZonalShiftConfigProperty
  = ZonalShiftConfigProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZonalShiftConfigProperty :: ZonalShiftConfigProperty
mkZonalShiftConfigProperty
  = ZonalShiftConfigProperty {enabled = Prelude.Nothing}
instance ToResourceProperties ZonalShiftConfigProperty where
  toResourceProperties ZonalShiftConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.ZonalShiftConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON ZonalShiftConfigProperty where
  toJSON ZonalShiftConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" ZonalShiftConfigProperty where
  type PropertyType "Enabled" ZonalShiftConfigProperty = Value Prelude.Bool
  set newValue ZonalShiftConfigProperty {}
    = ZonalShiftConfigProperty {enabled = Prelude.pure newValue, ..}