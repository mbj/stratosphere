module Stratosphere.RefactorSpaces.Service (
        module Exports, Service(..), mkService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RefactorSpaces.Service.LambdaEndpointInputProperty as Exports
import {-# SOURCE #-} Stratosphere.RefactorSpaces.Service.UrlEndpointInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Service
  = Service {applicationIdentifier :: (Value Prelude.Text),
             description :: (Prelude.Maybe (Value Prelude.Text)),
             endpointType :: (Value Prelude.Text),
             environmentIdentifier :: (Value Prelude.Text),
             lambdaEndpoint :: (Prelude.Maybe LambdaEndpointInputProperty),
             name :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag]),
             urlEndpoint :: (Prelude.Maybe UrlEndpointInputProperty),
             vpcId :: (Prelude.Maybe (Value Prelude.Text))}
mkService ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Service
mkService
  applicationIdentifier
  endpointType
  environmentIdentifier
  name
  = Service
      {applicationIdentifier = applicationIdentifier,
       endpointType = endpointType,
       environmentIdentifier = environmentIdentifier, name = name,
       description = Prelude.Nothing, lambdaEndpoint = Prelude.Nothing,
       tags = Prelude.Nothing, urlEndpoint = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties Service where
  toResourceProperties Service {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Service",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationIdentifier" JSON..= applicationIdentifier,
                            "EndpointType" JSON..= endpointType,
                            "EnvironmentIdentifier" JSON..= environmentIdentifier,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LambdaEndpoint" Prelude.<$> lambdaEndpoint,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UrlEndpoint" Prelude.<$> urlEndpoint,
                               (JSON..=) "VpcId" Prelude.<$> vpcId]))}
instance JSON.ToJSON Service where
  toJSON Service {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationIdentifier" JSON..= applicationIdentifier,
               "EndpointType" JSON..= endpointType,
               "EnvironmentIdentifier" JSON..= environmentIdentifier,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LambdaEndpoint" Prelude.<$> lambdaEndpoint,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UrlEndpoint" Prelude.<$> urlEndpoint,
                  (JSON..=) "VpcId" Prelude.<$> vpcId])))
instance Property "ApplicationIdentifier" Service where
  type PropertyType "ApplicationIdentifier" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {applicationIdentifier = newValue, ..}
instance Property "Description" Service where
  type PropertyType "Description" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {description = Prelude.pure newValue, ..}
instance Property "EndpointType" Service where
  type PropertyType "EndpointType" Service = Value Prelude.Text
  set newValue Service {..} = Service {endpointType = newValue, ..}
instance Property "EnvironmentIdentifier" Service where
  type PropertyType "EnvironmentIdentifier" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {environmentIdentifier = newValue, ..}
instance Property "LambdaEndpoint" Service where
  type PropertyType "LambdaEndpoint" Service = LambdaEndpointInputProperty
  set newValue Service {..}
    = Service {lambdaEndpoint = Prelude.pure newValue, ..}
instance Property "Name" Service where
  type PropertyType "Name" Service = Value Prelude.Text
  set newValue Service {..} = Service {name = newValue, ..}
instance Property "Tags" Service where
  type PropertyType "Tags" Service = [Tag]
  set newValue Service {..}
    = Service {tags = Prelude.pure newValue, ..}
instance Property "UrlEndpoint" Service where
  type PropertyType "UrlEndpoint" Service = UrlEndpointInputProperty
  set newValue Service {..}
    = Service {urlEndpoint = Prelude.pure newValue, ..}
instance Property "VpcId" Service where
  type PropertyType "VpcId" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {vpcId = Prelude.pure newValue, ..}