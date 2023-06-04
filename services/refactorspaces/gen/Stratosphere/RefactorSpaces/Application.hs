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
  = Application {apiGatewayProxy :: (Prelude.Maybe ApiGatewayProxyInputProperty),
                 environmentIdentifier :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 proxyType :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag]),
                 vpcId :: (Value Prelude.Text)}
mkApplication ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication environmentIdentifier name proxyType vpcId
  = Application
      {environmentIdentifier = environmentIdentifier, name = name,
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