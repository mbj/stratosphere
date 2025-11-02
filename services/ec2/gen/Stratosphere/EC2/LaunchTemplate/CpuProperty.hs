module Stratosphere.EC2.LaunchTemplate.CpuProperty (
        module Exports, CpuProperty(..), mkCpuProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.ReferenceProperty as Exports
import Stratosphere.ResourceProperties
data CpuProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-cpu.html>
    CpuProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-cpu.html#cfn-ec2-launchtemplate-cpu-references>
                 references :: (Prelude.Maybe [ReferenceProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCpuProperty :: CpuProperty
mkCpuProperty
  = CpuProperty
      {haddock_workaround_ = (), references = Prelude.Nothing}
instance ToResourceProperties CpuProperty where
  toResourceProperties CpuProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.Cpu",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "References" Prelude.<$> references])}
instance JSON.ToJSON CpuProperty where
  toJSON CpuProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "References" Prelude.<$> references]))
instance Property "References" CpuProperty where
  type PropertyType "References" CpuProperty = [ReferenceProperty]
  set newValue CpuProperty {..}
    = CpuProperty {references = Prelude.pure newValue, ..}