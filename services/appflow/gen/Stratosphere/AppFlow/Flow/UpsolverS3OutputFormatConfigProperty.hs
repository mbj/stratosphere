module Stratosphere.AppFlow.Flow.UpsolverS3OutputFormatConfigProperty (
        module Exports, UpsolverS3OutputFormatConfigProperty(..),
        mkUpsolverS3OutputFormatConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.AggregationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.PrefixConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpsolverS3OutputFormatConfigProperty
  = UpsolverS3OutputFormatConfigProperty {aggregationConfig :: (Prelude.Maybe AggregationConfigProperty),
                                          fileType :: (Prelude.Maybe (Value Prelude.Text)),
                                          prefixConfig :: PrefixConfigProperty}
mkUpsolverS3OutputFormatConfigProperty ::
  PrefixConfigProperty -> UpsolverS3OutputFormatConfigProperty
mkUpsolverS3OutputFormatConfigProperty prefixConfig
  = UpsolverS3OutputFormatConfigProperty
      {prefixConfig = prefixConfig, aggregationConfig = Prelude.Nothing,
       fileType = Prelude.Nothing}
instance ToResourceProperties UpsolverS3OutputFormatConfigProperty where
  toResourceProperties UpsolverS3OutputFormatConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.UpsolverS3OutputFormatConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PrefixConfig" JSON..= prefixConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationConfig" Prelude.<$> aggregationConfig,
                               (JSON..=) "FileType" Prelude.<$> fileType]))}
instance JSON.ToJSON UpsolverS3OutputFormatConfigProperty where
  toJSON UpsolverS3OutputFormatConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PrefixConfig" JSON..= prefixConfig]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationConfig" Prelude.<$> aggregationConfig,
                  (JSON..=) "FileType" Prelude.<$> fileType])))
instance Property "AggregationConfig" UpsolverS3OutputFormatConfigProperty where
  type PropertyType "AggregationConfig" UpsolverS3OutputFormatConfigProperty = AggregationConfigProperty
  set newValue UpsolverS3OutputFormatConfigProperty {..}
    = UpsolverS3OutputFormatConfigProperty
        {aggregationConfig = Prelude.pure newValue, ..}
instance Property "FileType" UpsolverS3OutputFormatConfigProperty where
  type PropertyType "FileType" UpsolverS3OutputFormatConfigProperty = Value Prelude.Text
  set newValue UpsolverS3OutputFormatConfigProperty {..}
    = UpsolverS3OutputFormatConfigProperty
        {fileType = Prelude.pure newValue, ..}
instance Property "PrefixConfig" UpsolverS3OutputFormatConfigProperty where
  type PropertyType "PrefixConfig" UpsolverS3OutputFormatConfigProperty = PrefixConfigProperty
  set newValue UpsolverS3OutputFormatConfigProperty {..}
    = UpsolverS3OutputFormatConfigProperty
        {prefixConfig = newValue, ..}