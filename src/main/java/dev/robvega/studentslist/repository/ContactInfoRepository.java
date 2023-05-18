package dev.robvega.studentslist.repository;

import dev.robvega.studentslist.model.ContactInfo;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ContactInfoRepository extends CrudRepository<ContactInfo, Long> {
    List<ContactInfo> findAll();
}
