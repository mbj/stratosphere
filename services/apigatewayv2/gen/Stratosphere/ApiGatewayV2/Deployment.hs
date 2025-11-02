module Stratosphere.ApiGatewayV2.Deployment (
        Deployment(..), mkDeployment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Deployment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html>
    Deployment {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-apiid>
                apiId :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-deployment.html#cfn-apigatewayv2-deployment-stagename>
                stageName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeployment :: Value Prelude.Text -> Deployment
mkDeployment apiId
  = Deployment
      {haddock_workaround_ = (), apiId = apiId,
       description = Prelude.Nothing, stageName = Prelude.Nothing}
instance ToResourceProperties Deployment where
  toResourceProperties Deployment {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Deployment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "StageName" Prelude.<$> stageName]))}
instance JSON.ToJSON Deployment where
  toJSON Deployment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "StageName" Prelude.<$> stageName])))
instance Property "ApiId" Deployment where
  type PropertyType "ApiId" Deployment = Value Prelude.Text
  set newValue Deployment {..} = Deployment {apiId = newValue, ..}
instance Property "Description" Deployment where
  type PropertyType "Description" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {description = Prelude.pure newValue, ..}
instance Property "StageName" Deployment where
  type PropertyType "StageName" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {stageName = Prelude.pure newValue, ..}