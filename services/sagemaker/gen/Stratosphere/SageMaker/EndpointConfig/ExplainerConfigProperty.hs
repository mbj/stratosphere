module Stratosphere.SageMaker.EndpointConfig.ExplainerConfigProperty (
        module Exports, ExplainerConfigProperty(..),
        mkExplainerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ClarifyExplainerConfigProperty as Exports
import Stratosphere.ResourceProperties
data ExplainerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-explainerconfig.html>
    ExplainerConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-explainerconfig.html#cfn-sagemaker-endpointconfig-explainerconfig-clarifyexplainerconfig>
                             clarifyExplainerConfig :: (Prelude.Maybe ClarifyExplainerConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExplainerConfigProperty :: ExplainerConfigProperty
mkExplainerConfigProperty
  = ExplainerConfigProperty
      {haddock_workaround_ = (),
       clarifyExplainerConfig = Prelude.Nothing}
instance ToResourceProperties ExplainerConfigProperty where
  toResourceProperties ExplainerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ExplainerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClarifyExplainerConfig"
                              Prelude.<$> clarifyExplainerConfig])}
instance JSON.ToJSON ExplainerConfigProperty where
  toJSON ExplainerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClarifyExplainerConfig"
                 Prelude.<$> clarifyExplainerConfig]))
instance Property "ClarifyExplainerConfig" ExplainerConfigProperty where
  type PropertyType "ClarifyExplainerConfig" ExplainerConfigProperty = ClarifyExplainerConfigProperty
  set newValue ExplainerConfigProperty {..}
    = ExplainerConfigProperty
        {clarifyExplainerConfig = Prelude.pure newValue, ..}