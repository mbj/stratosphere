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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html>
    InstanceAssociationOutputLocationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-instanceassociationoutputlocation.html#cfn-ssm-association-instanceassociationoutputlocation-s3location>
                                               s3Location :: (Prelude.Maybe S3OutputLocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceAssociationOutputLocationProperty ::
  InstanceAssociationOutputLocationProperty
mkInstanceAssociationOutputLocationProperty
  = InstanceAssociationOutputLocationProperty
      {haddock_workaround_ = (), s3Location = Prelude.Nothing}
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
  set newValue InstanceAssociationOutputLocationProperty {..}
    = InstanceAssociationOutputLocationProperty
        {s3Location = Prelude.pure newValue, ..}