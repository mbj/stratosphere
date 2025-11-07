module Stratosphere.DSQL.Cluster.MultiRegionPropertiesProperty (
        MultiRegionPropertiesProperty(..), mkMultiRegionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiRegionPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-multiregionproperties.html>
    MultiRegionPropertiesProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-multiregionproperties.html#cfn-dsql-cluster-multiregionproperties-clusters>
                                   clusters :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-multiregionproperties.html#cfn-dsql-cluster-multiregionproperties-witnessregion>
                                   witnessRegion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiRegionPropertiesProperty :: MultiRegionPropertiesProperty
mkMultiRegionPropertiesProperty
  = MultiRegionPropertiesProperty
      {haddock_workaround_ = (), clusters = Prelude.Nothing,
       witnessRegion = Prelude.Nothing}
instance ToResourceProperties MultiRegionPropertiesProperty where
  toResourceProperties MultiRegionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DSQL::Cluster.MultiRegionProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Clusters" Prelude.<$> clusters,
                            (JSON..=) "WitnessRegion" Prelude.<$> witnessRegion])}
instance JSON.ToJSON MultiRegionPropertiesProperty where
  toJSON MultiRegionPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Clusters" Prelude.<$> clusters,
               (JSON..=) "WitnessRegion" Prelude.<$> witnessRegion]))
instance Property "Clusters" MultiRegionPropertiesProperty where
  type PropertyType "Clusters" MultiRegionPropertiesProperty = ValueList Prelude.Text
  set newValue MultiRegionPropertiesProperty {..}
    = MultiRegionPropertiesProperty
        {clusters = Prelude.pure newValue, ..}
instance Property "WitnessRegion" MultiRegionPropertiesProperty where
  type PropertyType "WitnessRegion" MultiRegionPropertiesProperty = Value Prelude.Text
  set newValue MultiRegionPropertiesProperty {..}
    = MultiRegionPropertiesProperty
        {witnessRegion = Prelude.pure newValue, ..}