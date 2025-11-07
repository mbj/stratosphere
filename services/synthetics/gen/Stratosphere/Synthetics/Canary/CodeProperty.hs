module Stratosphere.Synthetics.Canary.CodeProperty (
        module Exports, CodeProperty(..), mkCodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.DependencyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html>
    CodeProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-blueprinttypes>
                  blueprintTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-dependencies>
                  dependencies :: (Prelude.Maybe [DependencyProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-handler>
                  handler :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3bucket>
                  s3Bucket :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3key>
                  s3Key :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-s3objectversion>
                  s3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-script>
                  script :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-code.html#cfn-synthetics-canary-code-sourcelocationarn>
                  sourceLocationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeProperty :: CodeProperty
mkCodeProperty
  = CodeProperty
      {haddock_workaround_ = (), blueprintTypes = Prelude.Nothing,
       dependencies = Prelude.Nothing, handler = Prelude.Nothing,
       s3Bucket = Prelude.Nothing, s3Key = Prelude.Nothing,
       s3ObjectVersion = Prelude.Nothing, script = Prelude.Nothing,
       sourceLocationArn = Prelude.Nothing}
instance ToResourceProperties CodeProperty where
  toResourceProperties CodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.Code",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlueprintTypes" Prelude.<$> blueprintTypes,
                            (JSON..=) "Dependencies" Prelude.<$> dependencies,
                            (JSON..=) "Handler" Prelude.<$> handler,
                            (JSON..=) "S3Bucket" Prelude.<$> s3Bucket,
                            (JSON..=) "S3Key" Prelude.<$> s3Key,
                            (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion,
                            (JSON..=) "Script" Prelude.<$> script,
                            (JSON..=) "SourceLocationArn" Prelude.<$> sourceLocationArn])}
instance JSON.ToJSON CodeProperty where
  toJSON CodeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlueprintTypes" Prelude.<$> blueprintTypes,
               (JSON..=) "Dependencies" Prelude.<$> dependencies,
               (JSON..=) "Handler" Prelude.<$> handler,
               (JSON..=) "S3Bucket" Prelude.<$> s3Bucket,
               (JSON..=) "S3Key" Prelude.<$> s3Key,
               (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion,
               (JSON..=) "Script" Prelude.<$> script,
               (JSON..=) "SourceLocationArn" Prelude.<$> sourceLocationArn]))
instance Property "BlueprintTypes" CodeProperty where
  type PropertyType "BlueprintTypes" CodeProperty = ValueList Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {blueprintTypes = Prelude.pure newValue, ..}
instance Property "Dependencies" CodeProperty where
  type PropertyType "Dependencies" CodeProperty = [DependencyProperty]
  set newValue CodeProperty {..}
    = CodeProperty {dependencies = Prelude.pure newValue, ..}
instance Property "Handler" CodeProperty where
  type PropertyType "Handler" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {handler = Prelude.pure newValue, ..}
instance Property "S3Bucket" CodeProperty where
  type PropertyType "S3Bucket" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3Bucket = Prelude.pure newValue, ..}
instance Property "S3Key" CodeProperty where
  type PropertyType "S3Key" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3Key = Prelude.pure newValue, ..}
instance Property "S3ObjectVersion" CodeProperty where
  type PropertyType "S3ObjectVersion" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3ObjectVersion = Prelude.pure newValue, ..}
instance Property "Script" CodeProperty where
  type PropertyType "Script" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {script = Prelude.pure newValue, ..}
instance Property "SourceLocationArn" CodeProperty where
  type PropertyType "SourceLocationArn" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {sourceLocationArn = Prelude.pure newValue, ..}