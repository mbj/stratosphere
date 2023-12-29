module Stratosphere.CodeDeploy.DeploymentGroup.LoadBalancerInfoProperty (
        module Exports, LoadBalancerInfoProperty(..),
        mkLoadBalancerInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.ELBInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.TargetGroupInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.TargetGroupPairInfoProperty as Exports
import Stratosphere.ResourceProperties
data LoadBalancerInfoProperty
  = LoadBalancerInfoProperty {elbInfoList :: (Prelude.Maybe [ELBInfoProperty]),
                              targetGroupInfoList :: (Prelude.Maybe [TargetGroupInfoProperty]),
                              targetGroupPairInfoList :: (Prelude.Maybe [TargetGroupPairInfoProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBalancerInfoProperty :: LoadBalancerInfoProperty
mkLoadBalancerInfoProperty
  = LoadBalancerInfoProperty
      {elbInfoList = Prelude.Nothing,
       targetGroupInfoList = Prelude.Nothing,
       targetGroupPairInfoList = Prelude.Nothing}
instance ToResourceProperties LoadBalancerInfoProperty where
  toResourceProperties LoadBalancerInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.LoadBalancerInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ElbInfoList" Prelude.<$> elbInfoList,
                            (JSON..=) "TargetGroupInfoList" Prelude.<$> targetGroupInfoList,
                            (JSON..=) "TargetGroupPairInfoList"
                              Prelude.<$> targetGroupPairInfoList])}
instance JSON.ToJSON LoadBalancerInfoProperty where
  toJSON LoadBalancerInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ElbInfoList" Prelude.<$> elbInfoList,
               (JSON..=) "TargetGroupInfoList" Prelude.<$> targetGroupInfoList,
               (JSON..=) "TargetGroupPairInfoList"
                 Prelude.<$> targetGroupPairInfoList]))
instance Property "ElbInfoList" LoadBalancerInfoProperty where
  type PropertyType "ElbInfoList" LoadBalancerInfoProperty = [ELBInfoProperty]
  set newValue LoadBalancerInfoProperty {..}
    = LoadBalancerInfoProperty
        {elbInfoList = Prelude.pure newValue, ..}
instance Property "TargetGroupInfoList" LoadBalancerInfoProperty where
  type PropertyType "TargetGroupInfoList" LoadBalancerInfoProperty = [TargetGroupInfoProperty]
  set newValue LoadBalancerInfoProperty {..}
    = LoadBalancerInfoProperty
        {targetGroupInfoList = Prelude.pure newValue, ..}
instance Property "TargetGroupPairInfoList" LoadBalancerInfoProperty where
  type PropertyType "TargetGroupPairInfoList" LoadBalancerInfoProperty = [TargetGroupPairInfoProperty]
  set newValue LoadBalancerInfoProperty {..}
    = LoadBalancerInfoProperty
        {targetGroupPairInfoList = Prelude.pure newValue, ..}