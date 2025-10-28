module Stratosphere.AppFlow.Flow.S3OutputFormatConfigProperty (
        module Exports, S3OutputFormatConfigProperty(..),
        mkS3OutputFormatConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.AggregationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.PrefixConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OutputFormatConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html>
    S3OutputFormatConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html#cfn-appflow-flow-s3outputformatconfig-aggregationconfig>
                                  aggregationConfig :: (Prelude.Maybe AggregationConfigProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html#cfn-appflow-flow-s3outputformatconfig-filetype>
                                  fileType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html#cfn-appflow-flow-s3outputformatconfig-prefixconfig>
                                  prefixConfig :: (Prelude.Maybe PrefixConfigProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3outputformatconfig.html#cfn-appflow-flow-s3outputformatconfig-preservesourcedatatyping>
                                  preserveSourceDataTyping :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3OutputFormatConfigProperty :: S3OutputFormatConfigProperty
mkS3OutputFormatConfigProperty
  = S3OutputFormatConfigProperty
      {haddock_workaround_ = (), aggregationConfig = Prelude.Nothing,
       fileType = Prelude.Nothing, prefixConfig = Prelude.Nothing,
       preserveSourceDataTyping = Prelude.Nothing}
instance ToResourceProperties S3OutputFormatConfigProperty where
  toResourceProperties S3OutputFormatConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.S3OutputFormatConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AggregationConfig" Prelude.<$> aggregationConfig,
                            (JSON..=) "FileType" Prelude.<$> fileType,
                            (JSON..=) "PrefixConfig" Prelude.<$> prefixConfig,
                            (JSON..=) "PreserveSourceDataTyping"
                              Prelude.<$> preserveSourceDataTyping])}
instance JSON.ToJSON S3OutputFormatConfigProperty where
  toJSON S3OutputFormatConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AggregationConfig" Prelude.<$> aggregationConfig,
               (JSON..=) "FileType" Prelude.<$> fileType,
               (JSON..=) "PrefixConfig" Prelude.<$> prefixConfig,
               (JSON..=) "PreserveSourceDataTyping"
                 Prelude.<$> preserveSourceDataTyping]))
instance Property "AggregationConfig" S3OutputFormatConfigProperty where
  type PropertyType "AggregationConfig" S3OutputFormatConfigProperty = AggregationConfigProperty
  set newValue S3OutputFormatConfigProperty {..}
    = S3OutputFormatConfigProperty
        {aggregationConfig = Prelude.pure newValue, ..}
instance Property "FileType" S3OutputFormatConfigProperty where
  type PropertyType "FileType" S3OutputFormatConfigProperty = Value Prelude.Text
  set newValue S3OutputFormatConfigProperty {..}
    = S3OutputFormatConfigProperty
        {fileType = Prelude.pure newValue, ..}
instance Property "PrefixConfig" S3OutputFormatConfigProperty where
  type PropertyType "PrefixConfig" S3OutputFormatConfigProperty = PrefixConfigProperty
  set newValue S3OutputFormatConfigProperty {..}
    = S3OutputFormatConfigProperty
        {prefixConfig = Prelude.pure newValue, ..}
instance Property "PreserveSourceDataTyping" S3OutputFormatConfigProperty where
  type PropertyType "PreserveSourceDataTyping" S3OutputFormatConfigProperty = Value Prelude.Bool
  set newValue S3OutputFormatConfigProperty {..}
    = S3OutputFormatConfigProperty
        {preserveSourceDataTyping = Prelude.pure newValue, ..}