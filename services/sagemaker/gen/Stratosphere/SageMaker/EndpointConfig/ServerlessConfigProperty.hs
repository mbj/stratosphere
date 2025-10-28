module Stratosphere.SageMaker.EndpointConfig.ServerlessConfigProperty (
        ServerlessConfigProperty(..), mkServerlessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerlessConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant-serverlessconfig.html>
    ServerlessConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant-serverlessconfig.html#cfn-sagemaker-endpointconfig-productionvariant-serverlessconfig-maxconcurrency>
                              maxConcurrency :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant-serverlessconfig.html#cfn-sagemaker-endpointconfig-productionvariant-serverlessconfig-memorysizeinmb>
                              memorySizeInMB :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant-serverlessconfig.html#cfn-sagemaker-endpointconfig-productionvariant-serverlessconfig-provisionedconcurrency>
                              provisionedConcurrency :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerlessConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ServerlessConfigProperty
mkServerlessConfigProperty maxConcurrency memorySizeInMB
  = ServerlessConfigProperty
      {haddock_workaround_ = (), maxConcurrency = maxConcurrency,
       memorySizeInMB = memorySizeInMB,
       provisionedConcurrency = Prelude.Nothing}
instance ToResourceProperties ServerlessConfigProperty where
  toResourceProperties ServerlessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ServerlessConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxConcurrency" JSON..= maxConcurrency,
                            "MemorySizeInMB" JSON..= memorySizeInMB]
                           (Prelude.catMaybes
                              [(JSON..=) "ProvisionedConcurrency"
                                 Prelude.<$> provisionedConcurrency]))}
instance JSON.ToJSON ServerlessConfigProperty where
  toJSON ServerlessConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxConcurrency" JSON..= maxConcurrency,
               "MemorySizeInMB" JSON..= memorySizeInMB]
              (Prelude.catMaybes
                 [(JSON..=) "ProvisionedConcurrency"
                    Prelude.<$> provisionedConcurrency])))
instance Property "MaxConcurrency" ServerlessConfigProperty where
  type PropertyType "MaxConcurrency" ServerlessConfigProperty = Value Prelude.Integer
  set newValue ServerlessConfigProperty {..}
    = ServerlessConfigProperty {maxConcurrency = newValue, ..}
instance Property "MemorySizeInMB" ServerlessConfigProperty where
  type PropertyType "MemorySizeInMB" ServerlessConfigProperty = Value Prelude.Integer
  set newValue ServerlessConfigProperty {..}
    = ServerlessConfigProperty {memorySizeInMB = newValue, ..}
instance Property "ProvisionedConcurrency" ServerlessConfigProperty where
  type PropertyType "ProvisionedConcurrency" ServerlessConfigProperty = Value Prelude.Integer
  set newValue ServerlessConfigProperty {..}
    = ServerlessConfigProperty
        {provisionedConcurrency = Prelude.pure newValue, ..}