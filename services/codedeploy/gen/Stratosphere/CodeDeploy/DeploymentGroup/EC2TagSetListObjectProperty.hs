module Stratosphere.CodeDeploy.DeploymentGroup.EC2TagSetListObjectProperty (
        module Exports, EC2TagSetListObjectProperty(..),
        mkEC2TagSetListObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentGroup.EC2TagFilterProperty as Exports
import Stratosphere.ResourceProperties
data EC2TagSetListObjectProperty
  = EC2TagSetListObjectProperty {ec2TagGroup :: (Prelude.Maybe [EC2TagFilterProperty])}
mkEC2TagSetListObjectProperty :: EC2TagSetListObjectProperty
mkEC2TagSetListObjectProperty
  = EC2TagSetListObjectProperty {ec2TagGroup = Prelude.Nothing}
instance ToResourceProperties EC2TagSetListObjectProperty where
  toResourceProperties EC2TagSetListObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.EC2TagSetListObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ec2TagGroup" Prelude.<$> ec2TagGroup])}
instance JSON.ToJSON EC2TagSetListObjectProperty where
  toJSON EC2TagSetListObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ec2TagGroup" Prelude.<$> ec2TagGroup]))
instance Property "Ec2TagGroup" EC2TagSetListObjectProperty where
  type PropertyType "Ec2TagGroup" EC2TagSetListObjectProperty = [EC2TagFilterProperty]
  set newValue EC2TagSetListObjectProperty {}
    = EC2TagSetListObjectProperty
        {ec2TagGroup = Prelude.pure newValue, ..}