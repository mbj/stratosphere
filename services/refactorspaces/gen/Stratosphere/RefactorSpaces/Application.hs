module Stratosphere.RefactorSpaces.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RefactorSpaces.Application.ApiGatewayProxyInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-refactorspaces-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-refactorspaces-application.html#cfn-refactorspaces-application-apigatewayproxy>
                 apiGatewayProxy :: (Prelude.Maybe ApiGatewayProxyInputProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-refactorspaces-application.html#cfn-refactorspaces-application-environmentidentifier>
                 environmentIdentifier :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-refactorspaces-application.html#cfn-refactorspaces-application-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-refactorspaces-application.html#cfn-refactorspaces-application-proxytype>
                 proxyType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-refactorspaces-application.html#cfn-refactorspaces-application-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-refactorspaces-application.html#cfn-refactorspaces-application-vpcid>
                 vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication environmentIdentifier name proxyType vpcId
  = Application
      {haddock_workaround_ = (),
       environmentIdentifier = environmentIdentifier, name = name,
       proxyType = proxyType, vpcId = vpcId,
       apiGatewayProxy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EnvironmentIdentifier" JSON..= environmentIdentifier,
                            "Name" JSON..= name, "ProxyType" JSON..= proxyType,
                            "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiGatewayProxy" Prelude.<$> apiGatewayProxy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EnvironmentIdentifier" JSON..= environmentIdentifier,
               "Name" JSON..= name, "ProxyType" JSON..= proxyType,
               "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "ApiGatewayProxy" Prelude.<$> apiGatewayProxy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApiGatewayProxy" Application where
  type PropertyType "ApiGatewayProxy" Application = ApiGatewayProxyInputProperty
  set newValue Application {..}
    = Application {apiGatewayProxy = Prelude.pure newValue, ..}
instance Property "EnvironmentIdentifier" Application where
  type PropertyType "EnvironmentIdentifier" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {environmentIdentifier = newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..} = Application {name = newValue, ..}
instance Property "ProxyType" Application where
  type PropertyType "ProxyType" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {proxyType = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}
instance Property "VpcId" Application where
  type PropertyType "VpcId" Application = Value Prelude.Text
  set newValue Application {..} = Application {vpcId = newValue, ..}