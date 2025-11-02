module Stratosphere.PCAConnectorAD.Template.SubjectNameFlagsV3Property (
        SubjectNameFlagsV3Property(..), mkSubjectNameFlagsV3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubjectNameFlagsV3Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html>
    SubjectNameFlagsV3Property {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-requirecommonname>
                                requireCommonName :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-requiredirectorypath>
                                requireDirectoryPath :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-requirednsascn>
                                requireDnsAsCn :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-requireemail>
                                requireEmail :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-sanrequiredirectoryguid>
                                sanRequireDirectoryGuid :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-sanrequiredns>
                                sanRequireDns :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-sanrequiredomaindns>
                                sanRequireDomainDns :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-sanrequireemail>
                                sanRequireEmail :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-sanrequirespn>
                                sanRequireSpn :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-subjectnameflagsv3.html#cfn-pcaconnectorad-template-subjectnameflagsv3-sanrequireupn>
                                sanRequireUpn :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubjectNameFlagsV3Property :: SubjectNameFlagsV3Property
mkSubjectNameFlagsV3Property
  = SubjectNameFlagsV3Property
      {haddock_workaround_ = (), requireCommonName = Prelude.Nothing,
       requireDirectoryPath = Prelude.Nothing,
       requireDnsAsCn = Prelude.Nothing, requireEmail = Prelude.Nothing,
       sanRequireDirectoryGuid = Prelude.Nothing,
       sanRequireDns = Prelude.Nothing,
       sanRequireDomainDns = Prelude.Nothing,
       sanRequireEmail = Prelude.Nothing, sanRequireSpn = Prelude.Nothing,
       sanRequireUpn = Prelude.Nothing}
instance ToResourceProperties SubjectNameFlagsV3Property where
  toResourceProperties SubjectNameFlagsV3Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.SubjectNameFlagsV3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RequireCommonName" Prelude.<$> requireCommonName,
                            (JSON..=) "RequireDirectoryPath" Prelude.<$> requireDirectoryPath,
                            (JSON..=) "RequireDnsAsCn" Prelude.<$> requireDnsAsCn,
                            (JSON..=) "RequireEmail" Prelude.<$> requireEmail,
                            (JSON..=) "SanRequireDirectoryGuid"
                              Prelude.<$> sanRequireDirectoryGuid,
                            (JSON..=) "SanRequireDns" Prelude.<$> sanRequireDns,
                            (JSON..=) "SanRequireDomainDns" Prelude.<$> sanRequireDomainDns,
                            (JSON..=) "SanRequireEmail" Prelude.<$> sanRequireEmail,
                            (JSON..=) "SanRequireSpn" Prelude.<$> sanRequireSpn,
                            (JSON..=) "SanRequireUpn" Prelude.<$> sanRequireUpn])}
instance JSON.ToJSON SubjectNameFlagsV3Property where
  toJSON SubjectNameFlagsV3Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RequireCommonName" Prelude.<$> requireCommonName,
               (JSON..=) "RequireDirectoryPath" Prelude.<$> requireDirectoryPath,
               (JSON..=) "RequireDnsAsCn" Prelude.<$> requireDnsAsCn,
               (JSON..=) "RequireEmail" Prelude.<$> requireEmail,
               (JSON..=) "SanRequireDirectoryGuid"
                 Prelude.<$> sanRequireDirectoryGuid,
               (JSON..=) "SanRequireDns" Prelude.<$> sanRequireDns,
               (JSON..=) "SanRequireDomainDns" Prelude.<$> sanRequireDomainDns,
               (JSON..=) "SanRequireEmail" Prelude.<$> sanRequireEmail,
               (JSON..=) "SanRequireSpn" Prelude.<$> sanRequireSpn,
               (JSON..=) "SanRequireUpn" Prelude.<$> sanRequireUpn]))
instance Property "RequireCommonName" SubjectNameFlagsV3Property where
  type PropertyType "RequireCommonName" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {requireCommonName = Prelude.pure newValue, ..}
instance Property "RequireDirectoryPath" SubjectNameFlagsV3Property where
  type PropertyType "RequireDirectoryPath" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {requireDirectoryPath = Prelude.pure newValue, ..}
instance Property "RequireDnsAsCn" SubjectNameFlagsV3Property where
  type PropertyType "RequireDnsAsCn" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {requireDnsAsCn = Prelude.pure newValue, ..}
instance Property "RequireEmail" SubjectNameFlagsV3Property where
  type PropertyType "RequireEmail" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {requireEmail = Prelude.pure newValue, ..}
instance Property "SanRequireDirectoryGuid" SubjectNameFlagsV3Property where
  type PropertyType "SanRequireDirectoryGuid" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {sanRequireDirectoryGuid = Prelude.pure newValue, ..}
instance Property "SanRequireDns" SubjectNameFlagsV3Property where
  type PropertyType "SanRequireDns" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {sanRequireDns = Prelude.pure newValue, ..}
instance Property "SanRequireDomainDns" SubjectNameFlagsV3Property where
  type PropertyType "SanRequireDomainDns" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {sanRequireDomainDns = Prelude.pure newValue, ..}
instance Property "SanRequireEmail" SubjectNameFlagsV3Property where
  type PropertyType "SanRequireEmail" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {sanRequireEmail = Prelude.pure newValue, ..}
instance Property "SanRequireSpn" SubjectNameFlagsV3Property where
  type PropertyType "SanRequireSpn" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {sanRequireSpn = Prelude.pure newValue, ..}
instance Property "SanRequireUpn" SubjectNameFlagsV3Property where
  type PropertyType "SanRequireUpn" SubjectNameFlagsV3Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV3Property {..}
    = SubjectNameFlagsV3Property
        {sanRequireUpn = Prelude.pure newValue, ..}