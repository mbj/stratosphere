module Stratosphere.ODB.OdbNetwork.S3AccessProperty (
        S3AccessProperty(..), mkS3AccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3AccessProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-s3access.html>
    S3AccessProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-s3access.html#cfn-odb-odbnetwork-s3access-domainname>
                      domainName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-s3access.html#cfn-odb-odbnetwork-s3access-ipv4addresses>
                      ipv4Addresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-s3access.html#cfn-odb-odbnetwork-s3access-s3policydocument>
                      s3PolicyDocument :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-s3access.html#cfn-odb-odbnetwork-s3access-status>
                      status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3AccessProperty :: S3AccessProperty
mkS3AccessProperty
  = S3AccessProperty
      {haddock_workaround_ = (), domainName = Prelude.Nothing,
       ipv4Addresses = Prelude.Nothing,
       s3PolicyDocument = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties S3AccessProperty where
  toResourceProperties S3AccessProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::OdbNetwork.S3Access",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "Ipv4Addresses" Prelude.<$> ipv4Addresses,
                            (JSON..=) "S3PolicyDocument" Prelude.<$> s3PolicyDocument,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON S3AccessProperty where
  toJSON S3AccessProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "Ipv4Addresses" Prelude.<$> ipv4Addresses,
               (JSON..=) "S3PolicyDocument" Prelude.<$> s3PolicyDocument,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "DomainName" S3AccessProperty where
  type PropertyType "DomainName" S3AccessProperty = Value Prelude.Text
  set newValue S3AccessProperty {..}
    = S3AccessProperty {domainName = Prelude.pure newValue, ..}
instance Property "Ipv4Addresses" S3AccessProperty where
  type PropertyType "Ipv4Addresses" S3AccessProperty = ValueList Prelude.Text
  set newValue S3AccessProperty {..}
    = S3AccessProperty {ipv4Addresses = Prelude.pure newValue, ..}
instance Property "S3PolicyDocument" S3AccessProperty where
  type PropertyType "S3PolicyDocument" S3AccessProperty = Value Prelude.Text
  set newValue S3AccessProperty {..}
    = S3AccessProperty {s3PolicyDocument = Prelude.pure newValue, ..}
instance Property "Status" S3AccessProperty where
  type PropertyType "Status" S3AccessProperty = Value Prelude.Text
  set newValue S3AccessProperty {..}
    = S3AccessProperty {status = Prelude.pure newValue, ..}