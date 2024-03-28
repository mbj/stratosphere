module Stratosphere.PCAConnectorAD.Template.SubjectNameFlagsV4Property (
        SubjectNameFlagsV4Property(..), mkSubjectNameFlagsV4Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubjectNameFlagsV4Property
  = SubjectNameFlagsV4Property {requireCommonName :: (Prelude.Maybe (Value Prelude.Bool)),
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
mkSubjectNameFlagsV4Property :: SubjectNameFlagsV4Property
mkSubjectNameFlagsV4Property
  = SubjectNameFlagsV4Property
      {requireCommonName = Prelude.Nothing,
       requireDirectoryPath = Prelude.Nothing,
       requireDnsAsCn = Prelude.Nothing, requireEmail = Prelude.Nothing,
       sanRequireDirectoryGuid = Prelude.Nothing,
       sanRequireDns = Prelude.Nothing,
       sanRequireDomainDns = Prelude.Nothing,
       sanRequireEmail = Prelude.Nothing, sanRequireSpn = Prelude.Nothing,
       sanRequireUpn = Prelude.Nothing}
instance ToResourceProperties SubjectNameFlagsV4Property where
  toResourceProperties SubjectNameFlagsV4Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.SubjectNameFlagsV4",
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
instance JSON.ToJSON SubjectNameFlagsV4Property where
  toJSON SubjectNameFlagsV4Property {..}
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
instance Property "RequireCommonName" SubjectNameFlagsV4Property where
  type PropertyType "RequireCommonName" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {requireCommonName = Prelude.pure newValue, ..}
instance Property "RequireDirectoryPath" SubjectNameFlagsV4Property where
  type PropertyType "RequireDirectoryPath" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {requireDirectoryPath = Prelude.pure newValue, ..}
instance Property "RequireDnsAsCn" SubjectNameFlagsV4Property where
  type PropertyType "RequireDnsAsCn" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {requireDnsAsCn = Prelude.pure newValue, ..}
instance Property "RequireEmail" SubjectNameFlagsV4Property where
  type PropertyType "RequireEmail" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {requireEmail = Prelude.pure newValue, ..}
instance Property "SanRequireDirectoryGuid" SubjectNameFlagsV4Property where
  type PropertyType "SanRequireDirectoryGuid" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {sanRequireDirectoryGuid = Prelude.pure newValue, ..}
instance Property "SanRequireDns" SubjectNameFlagsV4Property where
  type PropertyType "SanRequireDns" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {sanRequireDns = Prelude.pure newValue, ..}
instance Property "SanRequireDomainDns" SubjectNameFlagsV4Property where
  type PropertyType "SanRequireDomainDns" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {sanRequireDomainDns = Prelude.pure newValue, ..}
instance Property "SanRequireEmail" SubjectNameFlagsV4Property where
  type PropertyType "SanRequireEmail" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {sanRequireEmail = Prelude.pure newValue, ..}
instance Property "SanRequireSpn" SubjectNameFlagsV4Property where
  type PropertyType "SanRequireSpn" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {sanRequireSpn = Prelude.pure newValue, ..}
instance Property "SanRequireUpn" SubjectNameFlagsV4Property where
  type PropertyType "SanRequireUpn" SubjectNameFlagsV4Property = Value Prelude.Bool
  set newValue SubjectNameFlagsV4Property {..}
    = SubjectNameFlagsV4Property
        {sanRequireUpn = Prelude.pure newValue, ..}