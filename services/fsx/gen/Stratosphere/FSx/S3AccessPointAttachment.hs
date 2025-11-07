module Stratosphere.FSx.S3AccessPointAttachment (
        module Exports, S3AccessPointAttachment(..),
        mkS3AccessPointAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.S3AccessPointAttachment.S3AccessPointProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.S3AccessPointAttachment.S3AccessPointOpenZFSConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3AccessPointAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-s3accesspointattachment.html>
    S3AccessPointAttachment {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-s3accesspointattachment.html#cfn-fsx-s3accesspointattachment-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-s3accesspointattachment.html#cfn-fsx-s3accesspointattachment-openzfsconfiguration>
                             openZFSConfiguration :: S3AccessPointOpenZFSConfigurationProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-s3accesspointattachment.html#cfn-fsx-s3accesspointattachment-s3accesspoint>
                             s3AccessPoint :: (Prelude.Maybe S3AccessPointProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-s3accesspointattachment.html#cfn-fsx-s3accesspointattachment-type>
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3AccessPointAttachment ::
  Value Prelude.Text
  -> S3AccessPointOpenZFSConfigurationProperty
     -> Value Prelude.Text -> S3AccessPointAttachment
mkS3AccessPointAttachment name openZFSConfiguration type'
  = S3AccessPointAttachment
      {haddock_workaround_ = (), name = name,
       openZFSConfiguration = openZFSConfiguration, type' = type',
       s3AccessPoint = Prelude.Nothing}
instance ToResourceProperties S3AccessPointAttachment where
  toResourceProperties S3AccessPointAttachment {..}
    = ResourceProperties
        {awsType = "AWS::FSx::S3AccessPointAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "OpenZFSConfiguration" JSON..= openZFSConfiguration,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "S3AccessPoint" Prelude.<$> s3AccessPoint]))}
instance JSON.ToJSON S3AccessPointAttachment where
  toJSON S3AccessPointAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "OpenZFSConfiguration" JSON..= openZFSConfiguration,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "S3AccessPoint" Prelude.<$> s3AccessPoint])))
instance Property "Name" S3AccessPointAttachment where
  type PropertyType "Name" S3AccessPointAttachment = Value Prelude.Text
  set newValue S3AccessPointAttachment {..}
    = S3AccessPointAttachment {name = newValue, ..}
instance Property "OpenZFSConfiguration" S3AccessPointAttachment where
  type PropertyType "OpenZFSConfiguration" S3AccessPointAttachment = S3AccessPointOpenZFSConfigurationProperty
  set newValue S3AccessPointAttachment {..}
    = S3AccessPointAttachment {openZFSConfiguration = newValue, ..}
instance Property "S3AccessPoint" S3AccessPointAttachment where
  type PropertyType "S3AccessPoint" S3AccessPointAttachment = S3AccessPointProperty
  set newValue S3AccessPointAttachment {..}
    = S3AccessPointAttachment
        {s3AccessPoint = Prelude.pure newValue, ..}
instance Property "Type" S3AccessPointAttachment where
  type PropertyType "Type" S3AccessPointAttachment = Value Prelude.Text
  set newValue S3AccessPointAttachment {..}
    = S3AccessPointAttachment {type' = newValue, ..}