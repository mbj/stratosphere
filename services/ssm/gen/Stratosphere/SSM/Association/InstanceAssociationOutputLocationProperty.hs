module Stratosphere.SSM.Association.InstanceAssociationOutputLocationProperty (
        module Exports, InstanceAssociationOutputLocationProperty(..),
        mkInstanceAssociationOutputLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.Association.S3OutputLocationProperty as Exports
import Stratosphere.ResourceProperties
data InstanceAssociationOutputLocationProperty
  = InstanceAssociationOutputLocationProperty {s3Location :: (Prelude.Maybe S3OutputLocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceAssociationOutputLocationProperty ::
  InstanceAssociationOutputLocationProperty
mkInstanceAssociationOutputLocationProperty
  = InstanceAssociationOutputLocationProperty
      {s3Location = Prelude.Nothing}
instance ToResourceProperties InstanceAssociationOutputLocationProperty where
  toResourceProperties InstanceAssociationOutputLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Association.InstanceAssociationOutputLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3Location" Prelude.<$> s3Location])}
instance JSON.ToJSON InstanceAssociationOutputLocationProperty where
  toJSON InstanceAssociationOutputLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3Location" Prelude.<$> s3Location]))
instance Property "S3Location" InstanceAssociationOutputLocationProperty where
  type PropertyType "S3Location" InstanceAssociationOutputLocationProperty = S3OutputLocationProperty
  set newValue InstanceAssociationOutputLocationProperty {}
    = InstanceAssociationOutputLocationProperty
        {s3Location = Prelude.pure newValue, ..}