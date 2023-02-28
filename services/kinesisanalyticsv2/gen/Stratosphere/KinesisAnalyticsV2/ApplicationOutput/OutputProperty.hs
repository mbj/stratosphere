module Stratosphere.KinesisAnalyticsV2.ApplicationOutput.OutputProperty (
        module Exports, OutputProperty(..), mkOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationOutput.DestinationSchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationOutput.KinesisFirehoseOutputProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationOutput.KinesisStreamsOutputProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationOutput.LambdaOutputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputProperty
  = OutputProperty {destinationSchema :: DestinationSchemaProperty,
                    kinesisFirehoseOutput :: (Prelude.Maybe KinesisFirehoseOutputProperty),
                    kinesisStreamsOutput :: (Prelude.Maybe KinesisStreamsOutputProperty),
                    lambdaOutput :: (Prelude.Maybe LambdaOutputProperty),
                    name :: (Prelude.Maybe (Value Prelude.Text))}
mkOutputProperty :: DestinationSchemaProperty -> OutputProperty
mkOutputProperty destinationSchema
  = OutputProperty
      {destinationSchema = destinationSchema,
       kinesisFirehoseOutput = Prelude.Nothing,
       kinesisStreamsOutput = Prelude.Nothing,
       lambdaOutput = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties OutputProperty where
  toResourceProperties OutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationOutput.Output",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationSchema" JSON..= destinationSchema]
                           (Prelude.catMaybes
                              [(JSON..=) "KinesisFirehoseOutput"
                                 Prelude.<$> kinesisFirehoseOutput,
                               (JSON..=) "KinesisStreamsOutput" Prelude.<$> kinesisStreamsOutput,
                               (JSON..=) "LambdaOutput" Prelude.<$> lambdaOutput,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON OutputProperty where
  toJSON OutputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationSchema" JSON..= destinationSchema]
              (Prelude.catMaybes
                 [(JSON..=) "KinesisFirehoseOutput"
                    Prelude.<$> kinesisFirehoseOutput,
                  (JSON..=) "KinesisStreamsOutput" Prelude.<$> kinesisStreamsOutput,
                  (JSON..=) "LambdaOutput" Prelude.<$> lambdaOutput,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "DestinationSchema" OutputProperty where
  type PropertyType "DestinationSchema" OutputProperty = DestinationSchemaProperty
  set newValue OutputProperty {..}
    = OutputProperty {destinationSchema = newValue, ..}
instance Property "KinesisFirehoseOutput" OutputProperty where
  type PropertyType "KinesisFirehoseOutput" OutputProperty = KinesisFirehoseOutputProperty
  set newValue OutputProperty {..}
    = OutputProperty
        {kinesisFirehoseOutput = Prelude.pure newValue, ..}
instance Property "KinesisStreamsOutput" OutputProperty where
  type PropertyType "KinesisStreamsOutput" OutputProperty = KinesisStreamsOutputProperty
  set newValue OutputProperty {..}
    = OutputProperty {kinesisStreamsOutput = Prelude.pure newValue, ..}
instance Property "LambdaOutput" OutputProperty where
  type PropertyType "LambdaOutput" OutputProperty = LambdaOutputProperty
  set newValue OutputProperty {..}
    = OutputProperty {lambdaOutput = Prelude.pure newValue, ..}
instance Property "Name" OutputProperty where
  type PropertyType "Name" OutputProperty = Value Prelude.Text
  set newValue OutputProperty {..}
    = OutputProperty {name = Prelude.pure newValue, ..}