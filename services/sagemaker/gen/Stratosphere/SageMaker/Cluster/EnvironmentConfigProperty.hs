module Stratosphere.SageMaker.Cluster.EnvironmentConfigProperty (
        module Exports, EnvironmentConfigProperty(..),
        mkEnvironmentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.FSxLustreConfigProperty as Exports
import Stratosphere.ResourceProperties
data EnvironmentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-environmentconfig.html>
    EnvironmentConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-environmentconfig.html#cfn-sagemaker-cluster-environmentconfig-fsxlustreconfig>
                               fSxLustreConfig :: (Prelude.Maybe FSxLustreConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentConfigProperty :: EnvironmentConfigProperty
mkEnvironmentConfigProperty
  = EnvironmentConfigProperty
      {haddock_workaround_ = (), fSxLustreConfig = Prelude.Nothing}
instance ToResourceProperties EnvironmentConfigProperty where
  toResourceProperties EnvironmentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.EnvironmentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FSxLustreConfig" Prelude.<$> fSxLustreConfig])}
instance JSON.ToJSON EnvironmentConfigProperty where
  toJSON EnvironmentConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FSxLustreConfig" Prelude.<$> fSxLustreConfig]))
instance Property "FSxLustreConfig" EnvironmentConfigProperty where
  type PropertyType "FSxLustreConfig" EnvironmentConfigProperty = FSxLustreConfigProperty
  set newValue EnvironmentConfigProperty {..}
    = EnvironmentConfigProperty
        {fSxLustreConfig = Prelude.pure newValue, ..}