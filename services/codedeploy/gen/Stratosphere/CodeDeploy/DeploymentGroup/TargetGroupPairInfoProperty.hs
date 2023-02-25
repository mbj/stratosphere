module Stratosphere.CodeDeploy.DeploymentGroup.TargetGroupPairInfoProperty (
        module Exports, TargetGroupPairInfoProperty(..),
        mkTargetGroupPairInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.TargetGroupInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.TrafficRouteProperty as Exports
import Stratosphere.ResourceProperties
data TargetGroupPairInfoProperty
  = TargetGroupPairInfoProperty {prodTrafficRoute :: (Prelude.Maybe TrafficRouteProperty),
                                 targetGroups :: (Prelude.Maybe [TargetGroupInfoProperty]),
                                 testTrafficRoute :: (Prelude.Maybe TrafficRouteProperty)}
mkTargetGroupPairInfoProperty :: TargetGroupPairInfoProperty
mkTargetGroupPairInfoProperty
  = TargetGroupPairInfoProperty
      {prodTrafficRoute = Prelude.Nothing,
       targetGroups = Prelude.Nothing, testTrafficRoute = Prelude.Nothing}
instance ToResourceProperties TargetGroupPairInfoProperty where
  toResourceProperties TargetGroupPairInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.TargetGroupPairInfo",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ProdTrafficRoute" Prelude.<$> prodTrafficRoute,
                            (JSON..=) "TargetGroups" Prelude.<$> targetGroups,
                            (JSON..=) "TestTrafficRoute" Prelude.<$> testTrafficRoute])}
instance JSON.ToJSON TargetGroupPairInfoProperty where
  toJSON TargetGroupPairInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ProdTrafficRoute" Prelude.<$> prodTrafficRoute,
               (JSON..=) "TargetGroups" Prelude.<$> targetGroups,
               (JSON..=) "TestTrafficRoute" Prelude.<$> testTrafficRoute]))
instance Property "ProdTrafficRoute" TargetGroupPairInfoProperty where
  type PropertyType "ProdTrafficRoute" TargetGroupPairInfoProperty = TrafficRouteProperty
  set newValue TargetGroupPairInfoProperty {..}
    = TargetGroupPairInfoProperty
        {prodTrafficRoute = Prelude.pure newValue, ..}
instance Property "TargetGroups" TargetGroupPairInfoProperty where
  type PropertyType "TargetGroups" TargetGroupPairInfoProperty = [TargetGroupInfoProperty]
  set newValue TargetGroupPairInfoProperty {..}
    = TargetGroupPairInfoProperty
        {targetGroups = Prelude.pure newValue, ..}
instance Property "TestTrafficRoute" TargetGroupPairInfoProperty where
  type PropertyType "TestTrafficRoute" TargetGroupPairInfoProperty = TrafficRouteProperty
  set newValue TargetGroupPairInfoProperty {..}
    = TargetGroupPairInfoProperty
        {testTrafficRoute = Prelude.pure newValue, ..}