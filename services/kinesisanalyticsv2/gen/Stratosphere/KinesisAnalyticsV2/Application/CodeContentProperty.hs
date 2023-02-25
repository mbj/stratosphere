module Stratosphere.KinesisAnalyticsV2.Application.CodeContentProperty (
        module Exports, CodeContentProperty(..), mkCodeContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.S3ContentLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeContentProperty
  = CodeContentProperty {s3ContentLocation :: (Prelude.Maybe S3ContentLocationProperty),
                         textContent :: (Prelude.Maybe (Value Prelude.Text)),
                         zipFileContent :: (Prelude.Maybe (Value Prelude.Text))}
mkCodeContentProperty :: CodeContentProperty
mkCodeContentProperty
  = CodeContentProperty
      {s3ContentLocation = Prelude.Nothing,
       textContent = Prelude.Nothing, zipFileContent = Prelude.Nothing}
instance ToResourceProperties CodeContentProperty where
  toResourceProperties CodeContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.CodeContent",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3ContentLocation" Prelude.<$> s3ContentLocation,
                            (JSON..=) "TextContent" Prelude.<$> textContent,
                            (JSON..=) "ZipFileContent" Prelude.<$> zipFileContent])}
instance JSON.ToJSON CodeContentProperty where
  toJSON CodeContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3ContentLocation" Prelude.<$> s3ContentLocation,
               (JSON..=) "TextContent" Prelude.<$> textContent,
               (JSON..=) "ZipFileContent" Prelude.<$> zipFileContent]))
instance Property "S3ContentLocation" CodeContentProperty where
  type PropertyType "S3ContentLocation" CodeContentProperty = S3ContentLocationProperty
  set newValue CodeContentProperty {..}
    = CodeContentProperty
        {s3ContentLocation = Prelude.pure newValue, ..}
instance Property "TextContent" CodeContentProperty where
  type PropertyType "TextContent" CodeContentProperty = Value Prelude.Text
  set newValue CodeContentProperty {..}
    = CodeContentProperty {textContent = Prelude.pure newValue, ..}
instance Property "ZipFileContent" CodeContentProperty where
  type PropertyType "ZipFileContent" CodeContentProperty = Value Prelude.Text
  set newValue CodeContentProperty {..}
    = CodeContentProperty {zipFileContent = Prelude.pure newValue, ..}