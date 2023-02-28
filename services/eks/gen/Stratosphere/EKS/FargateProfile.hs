module Stratosphere.EKS.FargateProfile (
        module Exports, FargateProfile(..), mkFargateProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.FargateProfile.SelectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FargateProfile
  = FargateProfile {clusterName :: (Value Prelude.Text),
                    fargateProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                    podExecutionRoleArn :: (Value Prelude.Text),
                    selectors :: [SelectorProperty],
                    subnets :: (Prelude.Maybe (ValueList Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag])}
mkFargateProfile ::
  Value Prelude.Text
  -> Value Prelude.Text -> [SelectorProperty] -> FargateProfile
mkFargateProfile clusterName podExecutionRoleArn selectors
  = FargateProfile
      {clusterName = clusterName,
       podExecutionRoleArn = podExecutionRoleArn, selectors = selectors,
       fargateProfileName = Prelude.Nothing, subnets = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties FargateProfile where
  toResourceProperties FargateProfile {..}
    = ResourceProperties
        {awsType = "AWS::EKS::FargateProfile", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterName" JSON..= clusterName,
                            "PodExecutionRoleArn" JSON..= podExecutionRoleArn,
                            "Selectors" JSON..= selectors]
                           (Prelude.catMaybes
                              [(JSON..=) "FargateProfileName" Prelude.<$> fargateProfileName,
                               (JSON..=) "Subnets" Prelude.<$> subnets,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FargateProfile where
  toJSON FargateProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterName" JSON..= clusterName,
               "PodExecutionRoleArn" JSON..= podExecutionRoleArn,
               "Selectors" JSON..= selectors]
              (Prelude.catMaybes
                 [(JSON..=) "FargateProfileName" Prelude.<$> fargateProfileName,
                  (JSON..=) "Subnets" Prelude.<$> subnets,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ClusterName" FargateProfile where
  type PropertyType "ClusterName" FargateProfile = Value Prelude.Text
  set newValue FargateProfile {..}
    = FargateProfile {clusterName = newValue, ..}
instance Property "FargateProfileName" FargateProfile where
  type PropertyType "FargateProfileName" FargateProfile = Value Prelude.Text
  set newValue FargateProfile {..}
    = FargateProfile {fargateProfileName = Prelude.pure newValue, ..}
instance Property "PodExecutionRoleArn" FargateProfile where
  type PropertyType "PodExecutionRoleArn" FargateProfile = Value Prelude.Text
  set newValue FargateProfile {..}
    = FargateProfile {podExecutionRoleArn = newValue, ..}
instance Property "Selectors" FargateProfile where
  type PropertyType "Selectors" FargateProfile = [SelectorProperty]
  set newValue FargateProfile {..}
    = FargateProfile {selectors = newValue, ..}
instance Property "Subnets" FargateProfile where
  type PropertyType "Subnets" FargateProfile = ValueList Prelude.Text
  set newValue FargateProfile {..}
    = FargateProfile {subnets = Prelude.pure newValue, ..}
instance Property "Tags" FargateProfile where
  type PropertyType "Tags" FargateProfile = [Tag]
  set newValue FargateProfile {..}
    = FargateProfile {tags = Prelude.pure newValue, ..}