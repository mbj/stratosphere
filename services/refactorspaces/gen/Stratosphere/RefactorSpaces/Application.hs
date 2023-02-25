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
                 environmentIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 proxyType :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 vpcId :: (Prelude.Maybe (Value Prelude.Text))}
mkApplication :: Application
mkApplication
  = Application
      {apiGatewayProxy = Prelude.Nothing,
       environmentIdentifier = Prelude.Nothing, name = Prelude.Nothing,
       proxyType = Prelude.Nothing, tags = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Application",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApiGatewayProxy" Prelude.<$> apiGatewayProxy,
                            (JSON..=) "EnvironmentIdentifier"
                              Prelude.<$> environmentIdentifier,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ProxyType" Prelude.<$> proxyType,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VpcId" Prelude.<$> vpcId])}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApiGatewayProxy" Prelude.<$> apiGatewayProxy,
               (JSON..=) "EnvironmentIdentifier"
                 Prelude.<$> environmentIdentifier,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ProxyType" Prelude.<$> proxyType,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VpcId" Prelude.<$> vpcId]))
instance Property "ApiGatewayProxy" Application where
  type PropertyType "ApiGatewayProxy" Application = ApiGatewayProxyInputProperty
  set newValue Application {..}
    = Application {apiGatewayProxy = Prelude.pure newValue, ..}
instance Property "EnvironmentIdentifier" Application where
  type PropertyType "EnvironmentIdentifier" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {environmentIdentifier = Prelude.pure newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {name = Prelude.pure newValue, ..}
instance Property "ProxyType" Application where
  type PropertyType "ProxyType" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {proxyType = Prelude.pure newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}
instance Property "VpcId" Application where
  type PropertyType "VpcId" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {vpcId = Prelude.pure newValue, ..}