module Stratosphere.CodeGuruReviewer.RepositoryAssociation (
        RepositoryAssociation(..), mkRepositoryAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RepositoryAssociation
  = RepositoryAssociation {bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                           connectionArn :: (Prelude.Maybe (Value Prelude.Text)),
                           name :: (Value Prelude.Text),
                           owner :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe [Tag]),
                           type' :: (Value Prelude.Text)}
mkRepositoryAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> RepositoryAssociation
mkRepositoryAssociation name type'
  = RepositoryAssociation
      {name = name, type' = type', bucketName = Prelude.Nothing,
       connectionArn = Prelude.Nothing, owner = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties RepositoryAssociation where
  toResourceProperties RepositoryAssociation {..}
    = ResourceProperties
        {awsType = "AWS::CodeGuruReviewer::RepositoryAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "BucketName" Prelude.<$> bucketName,
                               (JSON..=) "ConnectionArn" Prelude.<$> connectionArn,
                               (JSON..=) "Owner" Prelude.<$> owner,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RepositoryAssociation where
  toJSON RepositoryAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "BucketName" Prelude.<$> bucketName,
                  (JSON..=) "ConnectionArn" Prelude.<$> connectionArn,
                  (JSON..=) "Owner" Prelude.<$> owner,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BucketName" RepositoryAssociation where
  type PropertyType "BucketName" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {bucketName = Prelude.pure newValue, ..}
instance Property "ConnectionArn" RepositoryAssociation where
  type PropertyType "ConnectionArn" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {connectionArn = Prelude.pure newValue, ..}
instance Property "Name" RepositoryAssociation where
  type PropertyType "Name" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {name = newValue, ..}
instance Property "Owner" RepositoryAssociation where
  type PropertyType "Owner" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {owner = Prelude.pure newValue, ..}
instance Property "Tags" RepositoryAssociation where
  type PropertyType "Tags" RepositoryAssociation = [Tag]
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {tags = Prelude.pure newValue, ..}
instance Property "Type" RepositoryAssociation where
  type PropertyType "Type" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {type' = newValue, ..}