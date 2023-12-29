module Stratosphere.IoTFleetWise.Campaign.DataDestinationConfigProperty (
        module Exports, DataDestinationConfigProperty(..),
        mkDataDestinationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.S3ConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.TimestreamConfigProperty as Exports
import Stratosphere.ResourceProperties
data DataDestinationConfigProperty
  = DataDestinationConfigProperty {s3Config :: (Prelude.Maybe S3ConfigProperty),
                                   timestreamConfig :: (Prelude.Maybe TimestreamConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataDestinationConfigProperty :: DataDestinationConfigProperty
mkDataDestinationConfigProperty
  = DataDestinationConfigProperty
      {s3Config = Prelude.Nothing, timestreamConfig = Prelude.Nothing}
instance ToResourceProperties DataDestinationConfigProperty where
  toResourceProperties DataDestinationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.DataDestinationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3Config" Prelude.<$> s3Config,
                            (JSON..=) "TimestreamConfig" Prelude.<$> timestreamConfig])}
instance JSON.ToJSON DataDestinationConfigProperty where
  toJSON DataDestinationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3Config" Prelude.<$> s3Config,
               (JSON..=) "TimestreamConfig" Prelude.<$> timestreamConfig]))
instance Property "S3Config" DataDestinationConfigProperty where
  type PropertyType "S3Config" DataDestinationConfigProperty = S3ConfigProperty
  set newValue DataDestinationConfigProperty {..}
    = DataDestinationConfigProperty
        {s3Config = Prelude.pure newValue, ..}
instance Property "TimestreamConfig" DataDestinationConfigProperty where
  type PropertyType "TimestreamConfig" DataDestinationConfigProperty = TimestreamConfigProperty
  set newValue DataDestinationConfigProperty {..}
    = DataDestinationConfigProperty
        {timestreamConfig = Prelude.pure newValue, ..}