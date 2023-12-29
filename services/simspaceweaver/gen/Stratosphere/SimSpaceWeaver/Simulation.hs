module Stratosphere.SimSpaceWeaver.Simulation (
        module Exports, Simulation(..), mkSimulation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SimSpaceWeaver.Simulation.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Simulation
  = Simulation {maximumDuration :: (Prelude.Maybe (Value Prelude.Text)),
                name :: (Value Prelude.Text),
                roleArn :: (Value Prelude.Text),
                schemaS3Location :: (Prelude.Maybe S3LocationProperty),
                snapshotS3Location :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSimulation ::
  Value Prelude.Text -> Value Prelude.Text -> Simulation
mkSimulation name roleArn
  = Simulation
      {name = name, roleArn = roleArn, maximumDuration = Prelude.Nothing,
       schemaS3Location = Prelude.Nothing,
       snapshotS3Location = Prelude.Nothing}
instance ToResourceProperties Simulation where
  toResourceProperties Simulation {..}
    = ResourceProperties
        {awsType = "AWS::SimSpaceWeaver::Simulation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "MaximumDuration" Prelude.<$> maximumDuration,
                               (JSON..=) "SchemaS3Location" Prelude.<$> schemaS3Location,
                               (JSON..=) "SnapshotS3Location" Prelude.<$> snapshotS3Location]))}
instance JSON.ToJSON Simulation where
  toJSON Simulation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "MaximumDuration" Prelude.<$> maximumDuration,
                  (JSON..=) "SchemaS3Location" Prelude.<$> schemaS3Location,
                  (JSON..=) "SnapshotS3Location" Prelude.<$> snapshotS3Location])))
instance Property "MaximumDuration" Simulation where
  type PropertyType "MaximumDuration" Simulation = Value Prelude.Text
  set newValue Simulation {..}
    = Simulation {maximumDuration = Prelude.pure newValue, ..}
instance Property "Name" Simulation where
  type PropertyType "Name" Simulation = Value Prelude.Text
  set newValue Simulation {..} = Simulation {name = newValue, ..}
instance Property "RoleArn" Simulation where
  type PropertyType "RoleArn" Simulation = Value Prelude.Text
  set newValue Simulation {..} = Simulation {roleArn = newValue, ..}
instance Property "SchemaS3Location" Simulation where
  type PropertyType "SchemaS3Location" Simulation = S3LocationProperty
  set newValue Simulation {..}
    = Simulation {schemaS3Location = Prelude.pure newValue, ..}
instance Property "SnapshotS3Location" Simulation where
  type PropertyType "SnapshotS3Location" Simulation = S3LocationProperty
  set newValue Simulation {..}
    = Simulation {snapshotS3Location = Prelude.pure newValue, ..}