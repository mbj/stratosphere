module Stratosphere.Logs.Destination (
        Destination(..), mkDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Destination
  = Destination {destinationName :: (Value Prelude.Text),
                 destinationPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                 roleArn :: (Value Prelude.Text),
                 targetArn :: (Value Prelude.Text)}
mkDestination ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Destination
mkDestination destinationName roleArn targetArn
  = Destination
      {destinationName = destinationName, roleArn = roleArn,
       targetArn = targetArn, destinationPolicy = Prelude.Nothing}
instance ToResourceProperties Destination where
  toResourceProperties Destination {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Destination",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationName" JSON..= destinationName,
                            "RoleArn" JSON..= roleArn, "TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DestinationPolicy" Prelude.<$> destinationPolicy]))}
instance JSON.ToJSON Destination where
  toJSON Destination {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationName" JSON..= destinationName,
               "RoleArn" JSON..= roleArn, "TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "DestinationPolicy" Prelude.<$> destinationPolicy])))
instance Property "DestinationName" Destination where
  type PropertyType "DestinationName" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {destinationName = newValue, ..}
instance Property "DestinationPolicy" Destination where
  type PropertyType "DestinationPolicy" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {destinationPolicy = Prelude.pure newValue, ..}
instance Property "RoleArn" Destination where
  type PropertyType "RoleArn" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {roleArn = newValue, ..}
instance Property "TargetArn" Destination where
  type PropertyType "TargetArn" Destination = Value Prelude.Text
  set newValue Destination {..}
    = Destination {targetArn = newValue, ..}