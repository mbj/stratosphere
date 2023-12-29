module Stratosphere.OSIS.Pipeline.LogPublishingOptionsProperty (
        module Exports, LogPublishingOptionsProperty(..),
        mkLogPublishingOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.CloudWatchLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogPublishingOptionsProperty
  = LogPublishingOptionsProperty {cloudWatchLogDestination :: (Prelude.Maybe CloudWatchLogDestinationProperty),
                                  isLoggingEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogPublishingOptionsProperty :: LogPublishingOptionsProperty
mkLogPublishingOptionsProperty
  = LogPublishingOptionsProperty
      {cloudWatchLogDestination = Prelude.Nothing,
       isLoggingEnabled = Prelude.Nothing}
instance ToResourceProperties LogPublishingOptionsProperty where
  toResourceProperties LogPublishingOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.LogPublishingOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogDestination"
                              Prelude.<$> cloudWatchLogDestination,
                            (JSON..=) "IsLoggingEnabled" Prelude.<$> isLoggingEnabled])}
instance JSON.ToJSON LogPublishingOptionsProperty where
  toJSON LogPublishingOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogDestination"
                 Prelude.<$> cloudWatchLogDestination,
               (JSON..=) "IsLoggingEnabled" Prelude.<$> isLoggingEnabled]))
instance Property "CloudWatchLogDestination" LogPublishingOptionsProperty where
  type PropertyType "CloudWatchLogDestination" LogPublishingOptionsProperty = CloudWatchLogDestinationProperty
  set newValue LogPublishingOptionsProperty {..}
    = LogPublishingOptionsProperty
        {cloudWatchLogDestination = Prelude.pure newValue, ..}
instance Property "IsLoggingEnabled" LogPublishingOptionsProperty where
  type PropertyType "IsLoggingEnabled" LogPublishingOptionsProperty = Value Prelude.Bool
  set newValue LogPublishingOptionsProperty {..}
    = LogPublishingOptionsProperty
        {isLoggingEnabled = Prelude.pure newValue, ..}