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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html>
    CodeContentProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-s3contentlocation>
                         s3ContentLocation :: (Prelude.Maybe S3ContentLocationProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-textcontent>
                         textContent :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-zipfilecontent>
                         zipFileContent :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeContentProperty :: CodeContentProperty
mkCodeContentProperty
  = CodeContentProperty
      {haddock_workaround_ = (), s3ContentLocation = Prelude.Nothing,
       textContent = Prelude.Nothing, zipFileContent = Prelude.Nothing}
instance ToResourceProperties CodeContentProperty where
  toResourceProperties CodeContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.CodeContent",
         supportsTags = Prelude.False,
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