module Stratosphere.AppMesh.VirtualNode.LoggingFormatProperty (
        module Exports, LoggingFormatProperty(..), mkLoggingFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.JsonFormatRefProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingFormatProperty
  = LoggingFormatProperty {json :: (Prelude.Maybe [JsonFormatRefProperty]),
                           text :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingFormatProperty :: LoggingFormatProperty
mkLoggingFormatProperty
  = LoggingFormatProperty
      {json = Prelude.Nothing, text = Prelude.Nothing}
instance ToResourceProperties LoggingFormatProperty where
  toResourceProperties LoggingFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.LoggingFormat",
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