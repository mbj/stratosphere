module Stratosphere.PCAConnectorAD.Template.SubjectNameFlagsV2Property (
        SubjectNameFlagsV2Property(..), mkSubjectNameFlagsV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubjectNameFlagsV2Property
  = SubjectNameFlagsV2Property {requireCommonName :: (Prelude.Maybe (Value Prelude.Bool)),
                                requireDirectoryPath :: (Prelude.Maybe (Value Prelude.Bool)),
                                requireDnsAsCn :: (Prelude.Maybe (Value Prelude.Bool)),
                                requireEmail :: (Prelude.Maybe (Value Prelude.Bool)),
                                sanRequireDirectoryGuid :: (Prelude.Maybe (Value Prelude.Bool)),
                                sanRequireDns :: (Prelude.Maybe (Value Prelude.Bool)),
                                sanRequireDomainDns :: (Prelude.Maybe (Value Prelude.Bool)),
                                sanRequireEmail :: (Prelude.Maybe (Value Prelude.Bool)),
                                sanRequireSpn :: (Prelude.Maybe (Value Prelude.Bool)),
                                sanRequireUpn :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubjectNameFlagsV2Property :: SubjectNameFlagsV2Property
mkSubjectNameFlagsV2Property
  = SubjectNameFlagsV2Property
      {requireCommonName = Prelude.Nothing,
       requireDirectoryPath = Prelude.Nothing,
       requireDnsAsCn = Prelude.Nothing, requireEmail = Prelude.Nothing,
       sanRequireDirectoryGuid = Prelude.Nothing,
       sanRequireDns = Prelude.Nothing,
       sanRequireDomainDns = Prelude.Nothing,
       sanRequireEmail = Prelude.Nothing, sanRequireSpn = Prelude.Nothing,
       sanRequireUpn = Prelude.Nothing}
instance ToResourceProperties SubjectNameFlagsV2Property where
  toResourceProperties SubjectNameFlagsV2Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.SubjectNameFlagsV2",
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
instance JSON.ToJSON SubjectNameFlagsV2Property where
  toJSON SubjectNameFlagsV2Property {..}
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
instance Property "RequireCommonName" SubjectNameFlagsV2Property where
  type PropertyType "RequireCommonName" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {requireCommonName = Prelude.pure newValue, ..}
instance Property "RequireDirectoryPath" SubjectNameFlagsV2Property where
  type PropertyType "RequireDirectoryPath" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {requireDirectoryPath = Prelude.pure newValue, ..}
instance Property "RequireDnsAsCn" SubjectNameFlagsV2Property where
  type PropertyType "RequireDnsAsCn" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {requireDnsAsCn = Prelude.pure newValue, ..}
instance Property "RequireEmail" SubjectNameFlagsV2Property where
  type PropertyType "RequireEmail" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {requireEmail = Prelude.pure newValue, ..}
instance Property "SanRequireDirectoryGuid" SubjectNameFlagsV2Property where
  type PropertyType "SanRequireDirectoryGuid" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {sanRequireDirectoryGuid = Prelude.pure newValue, ..}
instance Property "SanRequireDns" SubjectNameFlagsV2Property where
  type PropertyType "SanRequireDns" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {sanRequireDns = Prelude.pure newValue, ..}
instance Property "SanRequireDomainDns" SubjectNameFlagsV2Property where
  type PropertyType "SanRequireDomainDns" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {sanRequireDomainDns = Prelude.pure newValue, ..}
instance Property "SanRequireEmail" SubjectNameFlagsV2Property where
  type PropertyType "SanRequireEmail" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {sanRequireEmail = Prelude.pure newValue, ..}
instance Property "SanRequireSpn" SubjectNameFlagsV2Property where
  type PropertyType "SanRequireSpn" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {sanRequireSpn = Prelude.pure newValue, ..}
instance Property "SanRequireUpn" SubjectNameFlagsV2Property where
  type PropertyType "SanRequireUpn" SubjectNameFlagsV2Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV2Property {..}
    = SubjectNameFlagsV2Property
        {sanRequireUpn = Prelude.pure newValue, ..}