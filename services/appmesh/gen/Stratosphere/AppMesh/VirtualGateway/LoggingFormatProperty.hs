module Stratosphere.AppMesh.VirtualGateway.LoggingFormatProperty (
        module Exports, LoggingFormatProperty(..), mkLoggingFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualGateway.JsonFormatRefProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-loggingformat.html>
    LoggingFormatProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-loggingformat.html#cfn-appmesh-virtualgateway-loggingformat-json>
                           json :: (Prelude.Maybe [JsonFormatRefProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-loggingformat.html#cfn-appmesh-virtualgateway-loggingformat-text>
                           text :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingFormatProperty :: LoggingFormatProperty
mkLoggingFormatProperty
  = LoggingFormatProperty
      {haddock_workaround_ = (), json = Prelude.Nothing,
       text = Prelude.Nothing}
instance ToResourceProperties LoggingFormatProperty where
  toResourceProperties LoggingFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.LoggingFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Json" Prelude.<$> json,
                            (JSON..=) "Text" Prelude.<$> text])}
instance JSON.ToJSON LoggingFormatProperty where
  toJSON LoggingFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Json" Prelude.<$> json,
               (JSON..=) "Text" Prelude.<$> text]))
instance Property "Json" LoggingFormatProperty where
  type PropertyType "Json" LoggingFormatProperty = [JsonFormatRefProperty]
  set newValue LoggingFormatProperty {..}
    = LoggingFormatProperty {json = Prelude.pure newValue, ..}
instance Property "Text" LoggingFormatProperty where
  type PropertyType "Text" LoggingFormatProperty = Value Prelude.Text
  set newValue LoggingFormatProperty {..}
    = LoggingFormatProperty {text = Prelude.pure newValue, ..}