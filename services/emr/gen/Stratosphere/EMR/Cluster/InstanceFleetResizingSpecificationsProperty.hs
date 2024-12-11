module Stratosphere.EMR.Cluster.InstanceFleetResizingSpecificationsProperty (
        module Exports, InstanceFleetResizingSpecificationsProperty(..),
        mkInstanceFleetResizingSpecificationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.OnDemandResizingSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.SpotResizingSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data InstanceFleetResizingSpecificationsProperty
  = InstanceFleetResizingSpecificationsProperty {onDemandResizeSpecification :: (Prelude.Maybe OnDemandResizingSpecificationProperty),
                                                 spotResizeSpecification :: (Prelude.Maybe SpotResizingSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceFleetResizingSpecificationsProperty ::
  InstanceFleetResizingSpecificationsProperty
mkInstanceFleetResizingSpecificationsProperty
  = InstanceFleetResizingSpecificationsProperty
      {onDemandResizeSpecification = Prelude.Nothing,
       spotResizeSpecification = Prelude.Nothing}
instance ToResourceProperties InstanceFleetResizingSpecificationsProperty where
  toResourceProperties
    InstanceFleetResizingSpecificationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.InstanceFleetResizingSpecifications",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnDemandResizeSpecification"
                              Prelude.<$> onDemandResizeSpecification,
                            (JSON..=) "SpotResizeSpecification"
                              Prelude.<$> spotResizeSpecification])}
instance JSON.ToJSON InstanceFleetResizingSpecificationsProperty where
  toJSON InstanceFleetResizingSpecificationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnDemandResizeSpecification"
                 Prelude.<$> onDemandResizeSpecification,
               (JSON..=) "SpotResizeSpecification"
                 Prelude.<$> spotResizeSpecification]))
instance Property "OnDemandResizeSpecification" InstanceFleetResizingSpecificationsProperty where
  type PropertyType "OnDemandResizeSpecification" InstanceFleetResizingSpecificationsProperty = OnDemandResizingSpecificationProperty
  set newValue InstanceFleetResizingSpecificationsProperty {..}
    = InstanceFleetResizingSpecificationsProperty
        {onDemandResizeSpecification = Prelude.pure newValue, ..}
instance Property "SpotResizeSpecification" InstanceFleetResizingSpecificationsProperty where
  type PropertyType "SpotResizeSpecification" InstanceFleetResizingSpecificationsProperty = SpotResizingSpecificationProperty
  set newValue InstanceFleetResizingSpecificationsProperty {..}
    = InstanceFleetResizingSpecificationsProperty
        {spotResizeSpecification = Prelude.pure newValue, ..}