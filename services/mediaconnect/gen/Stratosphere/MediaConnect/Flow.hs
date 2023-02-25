module Stratosphere.MediaConnect.Flow (
        module Exports, Flow(..), mkFlow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.FailoverConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.SourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Flow
  = Flow {availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
          name :: (Value Prelude.Text),
          source :: SourceProperty,
          sourceFailoverConfig :: (Prelude.Maybe FailoverConfigProperty)}
mkFlow :: Value Prelude.Text -> SourceProperty -> Flow
mkFlow name source
  = Flow
      {name = name, source = source, availabilityZone = Prelude.Nothing,
       sourceFailoverConfig = Prelude.Nothing}
instance ToResourceProperties Flow where
  toResourceProperties Flow {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "SourceFailoverConfig"
                                 Prelude.<$> sourceFailoverConfig]))}
instance JSON.ToJSON Flow where
  toJSON Flow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "SourceFailoverConfig"
                    Prelude.<$> sourceFailoverConfig])))
instance Property "AvailabilityZone" Flow where
  type PropertyType "AvailabilityZone" Flow = Value Prelude.Text
  set newValue Flow {..}
    = Flow {availabilityZone = Prelude.pure newValue, ..}
instance Property "Name" Flow where
  type PropertyType "Name" Flow = Value Prelude.Text
  set newValue Flow {..} = Flow {name = newValue, ..}
instance Property "Source" Flow where
  type PropertyType "Source" Flow = SourceProperty
  set newValue Flow {..} = Flow {source = newValue, ..}
instance Property "SourceFailoverConfig" Flow where
  type PropertyType "SourceFailoverConfig" Flow = FailoverConfigProperty
  set newValue Flow {..}
    = Flow {sourceFailoverConfig = Prelude.pure newValue, ..}