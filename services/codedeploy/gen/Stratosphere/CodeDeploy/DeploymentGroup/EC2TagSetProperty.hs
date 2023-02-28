module Stratosphere.CodeDeploy.DeploymentGroup.EC2TagSetProperty (
        module Exports, EC2TagSetProperty(..), mkEC2TagSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.EC2TagSetListObjectProperty as Exports
import Stratosphere.ResourceProperties
data EC2TagSetProperty
  = EC2TagSetProperty {ec2TagSetList :: (Prelude.Maybe [EC2TagSetListObjectProperty])}
mkEC2TagSetProperty :: EC2TagSetProperty
mkEC2TagSetProperty
  = EC2TagSetProperty {ec2TagSetList = Prelude.Nothing}
instance ToResourceProperties EC2TagSetProperty where
  toResourceProperties EC2TagSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.EC2TagSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ec2TagSetList" Prelude.<$> ec2TagSetList])}
instance JSON.ToJSON EC2TagSetProperty where
  toJSON EC2TagSetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ec2TagSetList" Prelude.<$> ec2TagSetList]))
instance Property "Ec2TagSetList" EC2TagSetProperty where
  type PropertyType "Ec2TagSetList" EC2TagSetProperty = [EC2TagSetListObjectProperty]
  set newValue EC2TagSetProperty {}
    = EC2TagSetProperty {ec2TagSetList = Prelude.pure newValue, ..}