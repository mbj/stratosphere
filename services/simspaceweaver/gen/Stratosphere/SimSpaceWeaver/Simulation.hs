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
  = Simulation {name :: (Prelude.Maybe (Value Prelude.Text)),
                roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                schemaS3Location :: (Prelude.Maybe S3LocationProperty)}
mkSimulation :: Simulation
mkSimulation
  = Simulation
      {name = Prelude.Nothing, roleArn = Prelude.Nothing,
       schemaS3Location = Prelude.Nothing}
instance ToResourceProperties Simulation where
  toResourceProperties Simulation {..}
    = ResourceProperties
        {awsType = "AWS::SimSpaceWeaver::Simulation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "SchemaS3Location" Prelude.<$> schemaS3Location])}
instance JSON.ToJSON Simulation where
  toJSON Simulation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "SchemaS3Location" Prelude.<$> schemaS3Location]))
instance Property "Name" Simulation where
  type PropertyType "Name" Simulation = Value Prelude.Text
  set newValue Simulation {..}
    = Simulation {name = Prelude.pure newValue, ..}
instance Property "RoleArn" Simulation where
  type PropertyType "RoleArn" Simulation = Value Prelude.Text
  set newValue Simulation {..}
    = Simulation {roleArn = Prelude.pure newValue, ..}
instance Property "SchemaS3Location" Simulation where
  type PropertyType "SchemaS3Location" Simulation = S3LocationProperty
  set newValue Simulation {..}
    = Simulation {schemaS3Location = Prelude.pure newValue, ..}