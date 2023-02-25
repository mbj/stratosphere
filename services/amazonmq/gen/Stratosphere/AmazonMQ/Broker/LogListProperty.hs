module Stratosphere.AmazonMQ.Broker.LogListProperty (
        LogListProperty(..), mkLogListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogListProperty
  = LogListProperty {audit :: (Prelude.Maybe (Value Prelude.Bool)),
                     general :: (Prelude.Maybe (Value Prelude.Bool))}
mkLogListProperty :: LogListProperty
mkLogListProperty
  = LogListProperty
      {audit = Prelude.Nothing, general = Prelude.Nothing}
instance ToResourceProperties LogListProperty where
  toResourceProperties LogListProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Broker.LogList",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Audit" Prelude.<$> audit,
                            (JSON..=) "General" Prelude.<$> general])}
instance JSON.ToJSON LogListProperty where
  toJSON LogListProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Audit" Prelude.<$> audit,
               (JSON..=) "General" Prelude.<$> general]))
instance Property "Audit" LogListProperty where
  type PropertyType "Audit" LogListProperty = Value Prelude.Bool
  set newValue LogListProperty {..}
    = LogListProperty {audit = Prelude.pure newValue, ..}
instance Property "General" LogListProperty where
  type PropertyType "General" LogListProperty = Value Prelude.Bool
  set newValue LogListProperty {..}
    = LogListProperty {general = Prelude.pure newValue, ..}